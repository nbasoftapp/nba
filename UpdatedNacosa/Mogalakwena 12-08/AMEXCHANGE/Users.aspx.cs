using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Users : System.Web.UI.Page
    {
        string gend, dateCap, pass;
        NacosadbDataContext nacosadata = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCancel.Attributes.Add("onClick", "javascript:history.back(); return false;");

            dateCap = DateTime.Today.ToString("dd-MMM-yyyy hh:mm:ss");
            

            if (!IsPostBack)
            {
                if (Session["Role"] == null)
                {
                    Response.Redirect("login.aspx?action=Expired");
                }
                else
                    if (Session["Role"].Equals("Administrator"))
                    {
                        dtsSaveUser.SelectCommand = "SELECT * FROM Users";

                    }
                    else
                    {
                        Response.Redirect("login.aspx?action=Invalid Role");
                    }

                bindProvinces();
            }
        }

        private int generateHouseHoldNumber()
        {
            int hid = getRandomNum(1, 100000);
            return hid;
        }
        private int getRandomNum(int start, int end)
        {
            Random r = new Random();

            int rvalue = r.Next(start, end);
            return rvalue;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            try
            {
                if (GlobalMethods.validateEmail(txtEmail.Value) == 1)
                {
                    pass = generateHouseHoldNumber().ToString();
                    string qry;

                    qry = "INSERT INTO Users ([uname], [password], [name], [surname], [idNumber], [roleid], [gender], [active], [email], [cellNumber], [dateCaptured], [address])";
                    qry += "VALUES('" + txtUsername.Value + "','" + pass + "','" + txtName.Value + "','" + txtSurname.Value + "','" + txtIDNumber.Value + "','" + ddlRole.SelectedItem.Value.ToString() + "','" + ddlGender.SelectedItem.Text + "','A','";
                    qry += txtEmail.Value + "','" + txtContact.Value + "','" + dateCap + "','" + null + "')";

                    dtsSaveUser.InsertCommand = qry;
                    int result = dtsSaveUser.Insert();

                    if (result == 1)
                    {
                        string msg = "";
                        msg += "<br/>The following are your login details.";
                        msg += "<br/><strong> Link: <a href=mogalakwenamine.es3.co.za>mogalakwenamine.es3.co.za</a>";
                        msg += "<br/>Username: " + txtUsername.Value;
                        msg += "<br/>Password: " + pass + "</strong>";
                        msg += "<br/><br/>Regards<br/>Admin";

                        SendEmail.Email("Login Details", txtEmail.Value, txtName.Value, msg);

                        //txtAddress.Value = ""; txtContact.Value = "";
                        txtEmail.Value = ""; txtIDNumber.Value = ""; txtName.Value = "";
                        txtSurname.Value = ""; txtUsername.Value = "";

                        divError.Visible = false;
                        divSuccess.Visible = true;
                        txtSuccess.InnerHtml = "Successfully saved " + txtName.Value + "'s details";
                    }
                }
                else
                {
                    divError.Visible = true;
                    txtError.InnerHtml = "Invalid email address";
                    txtEmail.Value = "";
                    txtEmail.Focus();
                }

            }
            catch (Exception ex)
            {
                divError.Visible = true;
                txtError.InnerHtml = ex.Message.ToString();
            }

        }

        public void validateText()
        {
            if (ddlGender.SelectedIndex == 0)
                txtError.InnerHtml = "Please select gender";

            if (txtContact.Value.Equals(""))
                txtError.InnerHtml = "Contact Number field is empty";

            if (txtEmail.Value.Equals(""))
                txtError.InnerHtml = "Email Address field is empty";

            if (txtIDNumber.Value.Equals(""))
                txtError.InnerHtml = "ID Number field is empty";

            if (txtName.Value.Equals(""))
                txtError.InnerHtml = "Name field is empty";

            if (txtSurname.Value.Equals(""))
                txtError.InnerHtml = "Surname field is empty";

            if (txtUsername.Value.Equals(""))
                txtError.InnerHtml = "Username field is empty";

        }

        protected void rptUser_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (rptUser.Items.Count < 1)
            {
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    Label lblFooter = (Label)e.Item.FindControl("lblEmptyData");
                    lblFooter.Visible = true;
                }
            }
        }

        protected void bindProvinces()
        {
            ddlProvince.DataSource = nacosadata.Provinces.Where(n => n.ProvinceID != null).OrderBy(n => n.ProvinceName);
            ddlProvince.DataTextField = "ProvinceName";
            ddlProvince.DataValueField = "ProvinceID";
            ddlProvince.DataBind();
            ddlProvince.Items.Insert(0, new ListItem("---Select---", String.Empty));
        }

        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == int.Parse(ddlProvince.SelectedValue)).OrderBy(n => n.RegionName);
            ddrRegion.DataTextField = "RegionName";
            ddrRegion.DataValueField = "RegionID";
            ddrRegion.DataBind();
            ddrRegion.Items.Insert(0, new ListItem("---Select---", String.Empty));
        }

        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlRole.SelectedItem.Text.Equals("Filed Worker"))
            {
                ddlProvince.Enabled = true;
                ddrRegion.Enabled = true;
            }
            else
            {
                ddlProvince.Items.Clear();
                ddlProvince.SelectedIndex = 0;
                ddlProvince.Enabled = false;
                ddrRegion.Enabled = false;
            }
        }

    }
}