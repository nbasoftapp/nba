using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class AddSchool : System.Web.UI.Page
    {
        string school;
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            ddlVillage.SelectedItem.Text = Request.QueryString["village"];
        }

        protected void ddlSchool_TextChanged(object sender, EventArgs e)
        {
            if (ddlSchool.SelectedItem.Value == "Other")
            {
                school = txtSchool.Value;
                divOtherschool.Visible = true;
            }
            else
            {
                school = ddlSchool.SelectedItem.Value;
                divOtherschool.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ddlSchool.SelectedItem.Value == "Other")
            {
                school = txtSchool.Value;
            }
            else
            {
                school = ddlSchool.SelectedItem.Value;
            }

            try
            {
                string qry;
                qry = "INSERT INTO SchoolandGrade(generatedNumber, grade, school, dateCaptured, village)";
                qry += "VALUES('" + Request.QueryString["generatednum"] + "','" + ddlGrade.SelectedItem.Value + "','" + school + "','" + DateTime.Today + "','" + Request.QueryString["village"] + "')";

                dtsSaveApplication.InsertCommand = qry;
                int result = dtsSaveApplication.Insert();

                if (result == 1)
                {

                    string qury;
                    qury = "INSERT INTO AuditSchoolandgrade(updGeneratednum, updGrade, updSchool, updDateupdated, updVillage, updatedby)";
                    qury += "VALUES('" + Request.QueryString["generatednum"] + "','" + ddlGrade.SelectedItem.Value + "','" + school + "','" + DateTime.Today + "','" + Request.QueryString["village"] + "','" + Session["username"] + "')";

                    dtsSaveAudit.InsertCommand = qury;
                    int res = dtsSaveAudit.Insert();
                    {
                        btnSave.Enabled = false;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('School information saved successfully')</script>");
                        Response.Redirect("EditHouseholdInfo.aspx?id=" + Request.QueryString["id"] + "&Generatednum=" + Request.QueryString["Generatednum"]);
                    }
                }
            }
            catch (Exception ex)
            {
                divError.Visible = true;
                txtError.InnerHtml = ex.Message.ToString();
                GlobalMethods.closeConnection();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListHouseholds.aspx");
        }
    }
}