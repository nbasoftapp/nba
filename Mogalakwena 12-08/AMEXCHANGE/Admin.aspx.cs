using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Admin : System.Web.UI.Page
    {
        NacosadbDataContext nacosadata = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");
            else
                txtUserName.InnerHtml = Session["username"] as string;


            if (!IsPostBack)
            {
                // Here I used Degha Location as Main Location and Lat Long is : 21.622564, 87.523417
                //-25.85719, 28.1845484
                GLatLng mainLocation = new GLatLng(-26.270760, 28.112268);
                GMap1.setCenter(mainLocation, 15);

                XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
                GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

                List<UserRegistration> userreg = new List<UserRegistration>();
                using (NacosadbDataContext dc = new NacosadbDataContext())
                {
                    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
                }

                PinIcon p;
                GMarker gm;
                GInfoWindow win;
                foreach (var i in userreg)
                {
                    p = new PinIcon(PinIcons.home, Color.Cyan);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(-25.85719), Convert.ToDouble(28.1845484)),
                        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
                    win = new GInfoWindow(gm, i.Address , false, GListener.Event.mouseover);
                    GMap1.Add(win);
                }
            }
        }

    }
}