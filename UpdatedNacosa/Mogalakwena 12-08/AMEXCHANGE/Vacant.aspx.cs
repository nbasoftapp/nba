using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Vacant : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void rptHousehold_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (rptHousehold.Items.Count < 1)
            {
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    Label lblFooter = (Label)e.Item.FindControl("lblEmptyData");
                    lblFooter.Visible = true;
                }
            }
        }

        protected void ddlVillage_TextChanged(object sender, EventArgs e)
        {

            if (ddlVillage.SelectedItem.Value == "Blank")
                dtsHousehold.SelectCommand = "Select * From HouseholdMember Where Village ='' And LEN(likemine) <=20";
            else
            dtsHousehold.SelectCommand = "Select * From HouseholdMember Where Village ='" + ddlVillage.SelectedItem.Value + "' And LEN(likemine) <=20";
            
        }
    }
}