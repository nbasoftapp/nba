using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtusername.Value == "AMS001")

            {
                Response.Redirect("Buyers_Dashboard.aspx");
            }
            else
            {
                Response.Redirect("S_Dashboard.aspx");
            }


                

        }
    }
}