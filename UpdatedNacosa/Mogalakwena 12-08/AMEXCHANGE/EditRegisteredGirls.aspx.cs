using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class EditRegisteredGirls : System.Web.UI.Page
    {
        NacosadbDataContext datacontext = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            if (IsPostBack)
                return;

            bindRegisteredGirls();
            bindProvinces();
            
        }

        protected void bindRegisteredGirls()
        {
            var values = datacontext.vw_DisplayAGYWInfos.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();
            lblNameOfGirl.Text = values.Name + " " + values.Surname;

            txtName.Text = values.Name;
            txtSurname.Text = values.Surname;
            txtIDpassport.Text = values.IDorPassport;
            txtPhysicalAddress.Text = values.Address;
            txtDateOfBirth.Text = values.dateofbirth;
            txtContactNumber.Text = values.contactNumber;
            drRegion.SelectedIndex = drRegion.Items.IndexOf(drRegion.Items.FindByText(values.region));
            Image1.ImageUrl ="~/NacosaImage/" + values.IDorPassport.Trim() + ".jpeg";
        }

        protected void bindProvinces()
        {
            drRegion.DataSource = datacontext.Provinces.Where(n => n.ProvinceID != null).OrderBy(n => n.ProvinceName);
            drRegion.DataTextField = "ProvinceName";
            drRegion.DataValueField = "ProvinceID";
            drRegion.DataBind();
            drRegion.Items.Insert(0, new ListItem("---Select---", String.Empty));
        }


        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("~/QualityAssurence.aspx"));
        }

     

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (chkQualityAssured.Checked == true)
            {
                divError.Visible = false;
                UserRegistration user = datacontext.UserRegistrations.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();

                user.Name = txtName.Text;
                user.Surname = txtSurname.Text;
                user.IDorPassport = txtIDpassport.Text;
                user.Address = txtPhysicalAddress.Text;
                user.dateofbirth = txtDateOfBirth.Text;
                user.region = drRegion.SelectedItem.Text;
                user.contactNumber = txtContactNumber.Text;
                user.qualityAssured = "Yes";
                datacontext.SubmitChanges();
                divSuccess.Visible = true;
                txtSuccess.InnerHtml = "User Successfully Updated!"; 
            }
            else
            {
                divSuccess.Visible = false;
                divError.Visible = true;
                txtError.InnerHtml = "Please check the quality assured checkbox";
            }
        }


    }
}