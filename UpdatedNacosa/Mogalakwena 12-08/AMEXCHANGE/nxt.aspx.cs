using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class nxt : System.Web.UI.Page
    {
        private string hid;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                btnBack.Attributes.Add("onClick", "javascript:history.back(); return false;");
                hid = Request.QueryString["hid"].ToString();
                dvNxt.InnerHtml = "Household Member" +hid;
            }
            catch (Exception)
            {
               //do nothing
            }

        }
        private int generateHouseHoldNumber()
        {
            int hid = getRandomNum(1, 1000);
            return hid;
        }
        private int getRandomNum(int start, int end)
        {
            Random r = new Random();

            int rvalue = r.Next(start, end);
            return rvalue;
        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("HouseholdInfo.aspx?hid=" + generateHouseHoldNumber().ToString());
        }
        protected void radDisability_TextChanged(object sender, EventArgs e)
        {
            if (radDisability.Text == "Yes")
            {
                divDisability.Visible = true;
            }
            else
            {
                divDisability.Visible = false;
                divTxtDisability.Visible = false;
            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

        }

        protected void ddlDisability_TextChanged(object sender, EventArgs e)
        {
            if (ddlDisability.Text == "Other")
            {
                divTxtDisability.Visible = true;
            }
            else
                divTxtDisability.Visible = false;
        }

        
        protected void ddlRelationship_TextChanged(object sender, EventArgs e)
        {
            if (ddlRelationship.Text == "Other")
            {
                divRelationship.Visible = true;
            }
            else
                divRelationship.Visible = false;
        }

        protected void ddlLevelEducation_TextChanged(object sender, EventArgs e)
        {
            if (ddlLevelEducation.Text == "Some Primary Schooling")
            {
                divPrimary.Visible = true;
                divSecondary.Visible = false;
                divTertiary.Visible = false;
                divNone.Visible = false;
            }
            else
                if (ddlLevelEducation.Text == "Some Secondary Schooling")
                {
                    divPrimary.Visible = false;
                    divSecondary.Visible = true;
                    divTertiary.Visible = false;
                    divNone.Visible = false;
                }
                else
                    if (ddlLevelEducation.Text == "Higher Qualification")
                    {
                        divPrimary.Visible = false;
                        divSecondary.Visible = false;
                        divTertiary.Visible = true;
                        divNone.Visible = false;
                    }
                    else
                        if (ddlLevelEducation.Text == "No Schooling")
                        {
                            divPrimary.Visible = false;
                            divSecondary.Visible = false;
                            divTertiary.Visible = false;
                            divNone.Visible = true;
                        }
        }

    }
}