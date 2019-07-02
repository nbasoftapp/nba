using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml;
using System.Data; 

namespace AMEXCHANGE
{
    public partial class S_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetRSSbusday();
            GetRSSnews24();
        }

        private void GetRSSbusday()
        {

            //Create a WebRequest

            WebRequest rssReq =

            WebRequest.Create("http://www.bdlive.co.za//business/?service=rss");



            //Create a Proxy

            WebProxy px = new WebProxy("http://www.bdlive.co.za//business/?service=rss", true);



            //Assign the proxy to the WebRequest

            rssReq.Proxy = px;



            //Set the timeout in Seconds for the WebRequest

            rssReq.Timeout = 10000;

            try
            {

                //Get the WebResponse

                WebResponse rep = rssReq.GetResponse();



                //Read the Response in a XMLTextReader

                XmlTextReader xtr = new XmlTextReader(rep.GetResponseStream());



                //Create a new DataSet

                DataSet ds = new DataSet();



                //Read the Response into the DataSet

                ds.ReadXml(xtr);



                //Bind the Results to the Repeater

                rssRepeater.DataSource = ds.Tables[2];

                rssRepeater.DataBind();

            }

            catch (Exception ex)
            {

                throw ex;

            }

        }
        private void GetRSSnews24()
        {

            //Create a WebRequest

            WebRequest rssReq =

            WebRequest.Create("http://feeds.news24.com/articles/News24/TopStories/rss");



            //Create a Proxy

            WebProxy px = new WebProxy("http://feeds.news24.com/articles/News24/TopStories/rss", true);



            //Assign the proxy to the WebRequest

            rssReq.Proxy = px;



            //Set the timeout in Seconds for the WebRequest

            rssReq.Timeout = 10000;

            try
            {

                //Get the WebResponse

                WebResponse rep = rssReq.GetResponse();



                //Read the Response in a XMLTextReader

                XmlTextReader xtr = new XmlTextReader(rep.GetResponseStream());



                //Create a new DataSet

                DataSet ds = new DataSet();



                //Read the Response into the DataSet

                ds.ReadXml(xtr);



                //Bind the Results to the Repeater

                news24Repeater.DataSource = ds.Tables[2];

                news24Repeater.DataBind();

            }

            catch (Exception ex)
            {

                throw ex;

            }

        }








    }
}