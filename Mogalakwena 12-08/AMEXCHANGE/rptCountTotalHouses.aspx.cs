using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class rptCountTotalHouses : System.Web.UI.Page
    {

        private string municipa;
        private Query query;
        private SqlConnection connection = null;
        private SqlConnection myConnection = null;
        private SqlCommand command = null;
        private string usern, role, companyName, userID;
        //private cryCountTotalHouse repTotalHouses;
        //// private cryNumber_Villages_perMunicipa repPerVillage;
        //private dtsCountTotalHouse dtsTotalHouses;
        // private dtsEconomicProfile dtsVillageMunicipal;
        private DataTable table;
        private DataSet ds;
        private SqlDataAdapter adapter;


        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            //ReportViewer1.ServerReport.Refresh();

            //string urlReportServer = "http://156.38.134.211/Reports_ES3PPROD2012/";
            //HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(urlReportServer);
            // //Assign the credentials of the logged in user or the user being impersonated.
            //myHttpWebRequest.Credentials = new NetworkCredential("DNkuna", "M@dscientist135");
            //myHttpWebRequest.Credentials = CredentialCache.DefaultCredentials;
            // //Send the 'HttpWebRequest' and wait for response.            
            //HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse(); 

            //ReportViewer1.ProcessingMode = ProcessingMode.Remote; // ProcessingMode will be Either Remote or Local
            //ReportViewer1.ServerReport.ReportServerUrl = new Uri(urlReportServer); //Set the ReportServer Url
            //ReportViewer1.ServerReport.ReportPath = "/Report Project1/NumberOfRegisteredGirls"; //Passing the Report Path                
            //ReportViewer1.ServerReport.Refresh();

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(800/2);var Mtop = (screen.height/2)-(800/2);window.open( 'http://156.38.134.211:80/Reports_ES3PPROD2012/Pages/Report.aspx?ItemPath=%2fReport+Project1%2fNumberOfRegisteredGirls', null, 'height=800,width=800,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(800/2);var Mtop = (screen.height/2)-(800/2);window.open( 'http://156.38.134.211/ReportServer_ES3PPROD2012/Pages/ReportViewer.aspx?%2fReport+Project1%2fAssesmentReport&rs:Command=Render', null, 'height=800,width=800,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(800/2);var Mtop = (screen.height/2)-(800/2);window.open( 'http://156.38.134.211/ReportServer_ES3PPROD2012/Pages/ReportViewer.aspx?%2fReport+Project1%2fJourney&rs:Command=Render', null, 'height=800,width=800,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(800/2);var Mtop = (screen.height/2)-(800/2);window.open( 'http://156.38.134.211/ReportServer_ES3PPROD2012/Pages/ReportViewer.aspx?%2fReport+Project1%2fListOfAllRegisteredGirl&rs:Command=Render', null, 'height=800,width=800,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }
        
    }
}