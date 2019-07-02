using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Assessment1 : System.Web.UI.Page
    {
        NacosadbDataContext datacontext = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            getNameOfGirl();
            viewAssesment();
        }

        protected void getNameOfGirl()
        {
            var nameOfgirl = datacontext.UserRegistrations.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();
            lblNameOfGirl.Text = nameOfgirl.Name + " " + nameOfgirl.Surname;
        }

        //protected void btnSave_Click(object sender, EventArgs e)
        //{
        //    if (drSelectionCriteria.SelectedIndex == 0)
        //    {
        //        divError.Visible = true;
        //        txtError.InnerHtml = "Please Select View Or Update!";
        //    }
        //    else
        //    {


        //        Assessment ass = datacontext.Assessments.Where(n => n.regID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();

        //        if (ass.regID == null)
        //        {
        //            ass.regID = int.Parse(Request.QueryString["Id"]);
        //            datacontext.Assessments.InsertOnSubmit(ass);
        //            datacontext.SubmitChanges();
        //        }
        //        else
        //        {
        //            var regid = datacontext.UserRegistrations.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();

        //            ass.regID = regid.ID;
        //            ass.LiveWithParents = ddrLiveWithParents.SelectedItem.Text;
        //            ass.Schooling = drSchooling.SelectedItem.Text;
        //            ass.CompletedSchool = drCompletedSchool.SelectedItem.Text;
        //            ass.HighestGrade = drHighestGrade.SelectedItem.Text;
        //            ass.Children = drChildren.SelectedItem.Text;
        //            ass.HowManyChildren = Convert.ToInt32(txtNumberOfChildren.Text);
        //            ass.MaritalStatus = drMaritalStatus.SelectedItem.Text;

        //            datacontext.SubmitChanges();
        //            divSuccess.Visible = false;
        //            txtSuccess.InnerHtml = "Assessment Successfully Updated!";
        //        }
        //    }
        //}

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("~/dep.aspx"));
        }

        protected void viewAssesment()
        {
            var assessment = datacontext.Assessments.Where(n => n.regID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();
            if (assessment != null)
            {

                ddrLiveWithParents.SelectedIndex = ddrLiveWithParents.Items.IndexOf(ddrLiveWithParents.Items.FindByText(assessment.LiveWithParents));
                ddrLiveWithParents.Enabled = false;

                drSchooling.SelectedIndex = drSchooling.Items.IndexOf(drSchooling.Items.FindByText(assessment.Schooling));
                drSchooling.Enabled = false;

                drCompletedSchool.SelectedIndex = drCompletedSchool.Items.IndexOf(drCompletedSchool.Items.FindByText(assessment.CompletedSchool));
                drCompletedSchool.Enabled = false;

                drHighestGrade.SelectedIndex = drHighestGrade.Items.IndexOf(drHighestGrade.Items.FindByText(assessment.HighestGrade));
                drHighestGrade.Enabled = false;

                drChildren.SelectedIndex = drChildren.Items.IndexOf(drChildren.Items.FindByText(assessment.Children));
                drChildren.Enabled = false;

                txtNumberOfChildren.Text = assessment.HowManyChildren.ToString();
                txtNumberOfChildren.Enabled = false;

                drMaritalStatus.SelectedIndex = drMaritalStatus.Items.IndexOf(drMaritalStatus.Items.FindByText(assessment.MaritalStatus));
                drMaritalStatus.Enabled = false;

            }
            else
            {
                divError.Visible = true;
                txtError.InnerHtml = "Assessment not completed!";
            }
        }
        
    }
}