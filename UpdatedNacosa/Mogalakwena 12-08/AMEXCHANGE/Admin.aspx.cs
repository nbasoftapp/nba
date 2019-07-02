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
            //else
                //txtUserName.InnerHtml = Session["username"] as string;

            if (!IsPostBack)
            {
                // Here I used Degha Location as Main Location and Lat Long is : 21.622564, 87.523417
                //	-29.7730471,24.7032451
                //GLatLng mainLocation = new GLatLng(-29.7730471, 24.7032451);
                //GMap1.setCenter(mainLocation, 5);

                //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
                //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

                //List<UserRegistration> userreg = new List<UserRegistration>();
                //using (NacosadbDataContext dc = new NacosadbDataContext())
                //{
                //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
                //}

                //PinIcon p;
                //GMarker gm;
                //GInfoWindow win;
                //foreach (var i in userreg)
                //{
                //    p = new PinIcon(PinIcons.home, Color.Cyan);
                //    gm = new GMarker(new GLatLng(Convert.ToDouble(-29.7730471), Convert.ToDouble(24.7032451)),
                //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
                //    win = new GInfoWindow(gm, "South Africa", false, GListener.Event.mouseover);
                //    GMap1.Add(win);

                //}
            }
        }

        //protected void lnlEasternCape_Click(object sender, EventArgs e)
        //{
        //    //ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == 1).OrderBy(n => n.RegionName);
        //    //ddrRegion.DataTextField = "RegionName";
        //    //ddrRegion.DataValueField = "RegionID";
        //    //ddrRegion.DataBind();
        //    //ddrRegion.Items.Insert(0, new ListItem("---Select Region---", String.Empty));

        //    //GLatLng mainLocation = new GLatLng(-32.296841, 26.419390);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(-33.013440), Convert.ToDouble(27.904200)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
        //    //    win = new GInfoWindow(gm, "Eastern Cape", false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);


        //    //}

        //}

        //protected void LinkFreeState_Click(object sender, EventArgs e)
        //{
        //    //ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == 2).OrderBy(n => n.RegionName);
        //    //ddrRegion.DataTextField = "RegionName";
        //    //ddrRegion.DataValueField = "RegionID";
        //    //ddrRegion.DataBind();
        //    //ddrRegion.Items.Insert(0, new ListItem("---Select Region---", String.Empty));

        //    //GLatLng mainLocation = new GLatLng(-28.636965, 25.308609);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(-28.636965), Convert.ToDouble(25.308609)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
        //    //    win = new GInfoWindow(gm, "Free State", false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);
        //    //}
        //}

        //protected void LinkGauteng_Click(object sender, EventArgs e)
        //{

        //    //ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == 3).OrderBy(n => n.RegionName);
        //    //ddrRegion.DataTextField = "RegionName";
        //    //ddrRegion.DataValueField = "RegionID";
        //    //ddrRegion.DataBind();
        //    //ddrRegion.Items.Insert(0, new ListItem("---Select Region---", String.Empty));

        //    //double latitude = -26.270760;
        //    //double longitude = 28.112268;

        //    //GLatLng mainLocation = new GLatLng(latitude, longitude);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(latitude), Convert.ToDouble(longitude)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //
                
        //    //    win = new GInfoWindow(gm, "Gauteng "+"\n"+" Total Number Of Registered Girls = 5000", false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);
        //    //}

        //}

        //protected void LinkKzn_Click(object sender, EventArgs e)
        //{
        //    //ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == 5).OrderBy(n => n.RegionName);
        //    //ddrRegion.DataTextField = "RegionName";
        //    //ddrRegion.DataValueField = "RegionID";
        //    //ddrRegion.DataBind();
        //    //ddrRegion.Items.Insert(0, new ListItem("---Select Region---", String.Empty));

        //    //GLatLng mainLocation = new GLatLng(-28.530554, 30.895824);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(-28.530554), Convert.ToDouble(30.895824)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
        //    //    win = new GInfoWindow(gm, "KwaZuluNatal", false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);
        //    //}
        //}

        //protected void LinkLimpopo_Click(object sender, EventArgs e)
        //{
        //    //ddrRegion.DataSource = nacosadata.Regions.Where(n => n.ProvinceID == 4).OrderBy(n => n.RegionName);
        //    //ddrRegion.DataTextField = "RegionName";
        //    //ddrRegion.DataValueField = "RegionID";
        //    //ddrRegion.DataBind();
        //    //ddrRegion.Items.Insert(0, new ListItem("---Select Region---", String.Empty));

        //    //GLatLng mainLocation = new GLatLng(-23.401295, 29.417933);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(-23.401295), Convert.ToDouble(29.417933)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
        //    //    win = new GInfoWindow(gm, "Limpopo", false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);
        //    //}
        //}

        //protected void ddrRegion_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //if (ddrRegion.SelectedItem.Text.Equals("City of Ekurhuleni Metropolitan".Trim()))
        //    //{
        //    //    getRegion(-25.886629, 28.195200, ddrRegion.SelectedItem.Text);
        //    //}
        //    //else if (ddrRegion.SelectedItem.Text.Equals("City of Johannesburg Metropolitan"))
        //    //{
        //    //    getRegion(-26.201450, 28.045490, ddrRegion.SelectedItem.Text);
        //    //}
        //    //else if (ddrRegion.SelectedItem.Text.Equals("City of Tshwane Metropolitan"))
        //    //{
        //    //    getRegion(-25.746019, 28.187120, ddrRegion.SelectedItem.Text);
        //    //}
        //    //else if (ddrRegion.SelectedItem.Text.Equals("Sedibeng District"))
        //    //{
        //    //    getRegion(-26.005180, 28.236790, ddrRegion.SelectedItem.Text);
        //    //}
        //    //else
        //    //{
        //    //    getRegion(-26.323920, 27.758320, ddrRegion.SelectedItem.Text);
        //    //}

        //}

        //protected void getRegion(double latitude, double longitude, string region)
        //{

        //    //GLatLng mainLocation = new GLatLng(latitude, longitude);
        //    //GMap1.setCenter(mainLocation, 10);

        //    //XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        //    //GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        //    //List<UserRegistration> userreg = new List<UserRegistration>();
        //    //using (NacosadbDataContext dc = new NacosadbDataContext())
        //    //{
        //    //    userreg = dc.UserRegistrations.Where(a => a.ID != null).ToList();
        //    //}

        //    //PinIcon p;
        //    //GMarker gm;
        //    //GInfoWindow win;
        //    //foreach (var i in userreg)
        //    //{
        //    //    p = new PinIcon(PinIcons.home, Color.Cyan);
        //    //    gm = new GMarker(new GLatLng(Convert.ToDouble(latitude), Convert.ToDouble(longitude)),
        //    //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
        //    //    //" <a href='" + i.ReadMoreUrl + "'>Read more...</a>"
        //    //    win = new GInfoWindow(gm, region, false, GListener.Event.mouseover);
        //    //    GMap1.Add(win);
        //    //}

        //}

      
    }
}