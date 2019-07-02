using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Demographics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");
            
        }

        protected void Demographic_btn_Click(object sender, EventArgs e)
        {
            if (ddDemographics.SelectedItem.Text.Equals("Number of villages"))
            {
                Response.Redirect("rptNumber_villages.aspx?repName=" + ddlMunicipality.SelectedItem.Text);
            }
            else if (ddDemographics.SelectedItem.Text.Equals("Population size"))
            {
                Response.Redirect("rptPopulation size.aspx?repName=" + ddlMunicipality.SelectedItem.Text);
            }
        }

        protected void ddDemographics_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddDemographics.SelectedItem.Text.Equals("Number of villages"))
            {
                municipal.Visible = true;
            }
            else
            {
                municipal.Visible = false;
            }
        }
    }
}