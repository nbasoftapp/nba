using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class dep : System.Web.UI.Page
    {
        NacosadbDataContext datacontext = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            bindAGYWInfor();
        }

        protected void bindAGYWInfor()
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM vw_DisplayAGYWInfo"; 
        }

        protected void rptAGWYDATA_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (rptAGWYDATA.Items.Count < 1)
            {
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    Label lblFooter = (Label)e.Item.FindControl("lblEmptyData");
                    lblFooter.Visible = true;
                }
            }
        }

        protected void lnkAssesment_Click(object sender, EventArgs e)
        {
            string strID = (sender as LinkButton).CommandArgument;
            Response.Redirect(string.Format("~/Assessment.aspx?em={0}&er={1}&es={2}&Id={3}", Request.QueryString["em"], Request.QueryString["er"], Request.QueryString["es"], strID));
        }

        protected void lnkJourneyPlan_Click(object sender, EventArgs e)
        {
            string strID = (sender as LinkButton).CommandArgument;
            Response.Redirect(string.Format("~/JourneyPlan.aspx?em={0}&er={1}&es={2}&Id={3}", Request.QueryString["em"], Request.QueryString["er"], Request.QueryString["es"], strID));
        }
       
    }
}