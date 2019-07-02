using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class AddOutschool : System.Web.UI.Page
    {
        string work;

        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            ddlVillage.SelectedItem.Text = Request.QueryString["village"];
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlEmpStatus.SelectedItem.Text == "Working")
                {
                    if (ddlWorkwhere.SelectedItem.Text == "Working at the mine")
                    {
                        work = "Working at the mine";
                    }
                    else
                    {
                        work = "Not at the mine";
                    }
                }
                else
                {
                    work = "N/A";
                }

                string qry;
                qry = "INSERT INTO OutofSchoolMember (qualification, member, empStatus, workWhere, dateCaptured, village)";
                qry += "VALUES('" + Request.QueryString["Generatednum"] + "','" + ddlEmpStatus.SelectedItem.Value + "','" + work + "','" + txtQualification.Value + "','" + DateTime.Today + "','" + Request.QueryString["village"] + "')";

                dtsSaveApplication.InsertCommand = qry;
                int results = dtsSaveApplication.Insert();

                if (results == 1)
                {
                    string qury;
                    qury = "INSERT INTO AuditOutofschool (updGeneratednum, updEmpstatus, updWorkwhere, updQualification, updDateupdated, updVillage, updatedby)";
                    qury += "VALUES('" + Request.QueryString["Generatednum"] + "','" + ddlEmpStatus.SelectedItem.Value + "','" + work + "','" + txtQualification.Value + "','" + DateTime.Today + "','" + Request.QueryString["village"] + "','" + Session["username"] + "')";

                    dtsSaveAudit.InsertCommand = qury;
                    int res = dtsSaveAudit.Insert();

                    if (res == 1)
                    {
                        btnSave.Enabled = false;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Out of school details saved successfully')</script>");
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

        protected void ddlEmpStatus_TextChanged(object sender, EventArgs e)
        {
            if (ddlEmpStatus.SelectedItem.Value == "Not working")
                divWorkwhere.Visible = false;
            else
                if (ddlEmpStatus.SelectedItem.Value == "Working")
                divWorkwhere.Visible = true;
        }
    }
}