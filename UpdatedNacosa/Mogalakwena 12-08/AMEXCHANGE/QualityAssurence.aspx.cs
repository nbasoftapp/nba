﻿using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class QualityAssurance : System.Web.UI.Page
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
            DataTable drTable = new DataTable();
            drTable.Columns.Add("ID", typeof(int));
            drTable.Columns.Add("strpath", typeof(string));
            drTable.Columns.Add("Name", typeof(string));
            drTable.Columns.Add("Surname", typeof(string));
            drTable.Columns.Add("IDorPassport", typeof(string));
            drTable.Columns.Add("Address", typeof(string));
            drTable.Columns.Add("region", typeof(string));

            DataSet ds = null;
            DataRow row = null;
            var values = datacontext.NotQualityAssureds.Where(n => n.ID != null).OrderBy(n => n.Name);

        
            foreach (var item in values)
            {
                row = drTable.NewRow();
                row["ID"] = item.ID;

                string path = item.strPath.Trim();
                string extension = Path.GetExtension(path);
                string rootpath = "";
                switch(extension)
                {
                    case ".jpg":
                        rootpath = "~/NacosaImage/" + item.IDorPassport.Trim() + ".jpg";
                        break;
                    case "jpeg":
                        rootpath = "~/NacosaImage/" + item.IDorPassport.Trim() + ".jpeg";
                        break;
                }
                
                row["strpath"] = rootpath;
                row["Name"] = item.Name;
                row["Surname"] = item.Surname;
                row["IDorPassport"] = item.IDorPassport;
                row["Address"] = item.Address;
                row["region"] = item.region;

                ds = new DataSet();
                drTable.Rows.Add(row);
                ds.Tables.Add(drTable.Copy());
                rptAGWYDATA.DataSource = ds.Tables[0];
                rptAGWYDATA.DataBind();
                
               
            }
        }

       
        protected void lnkEdit_Click(object sender, EventArgs e)
        {
            string strID = (sender as LinkButton).CommandArgument;
            Response.Redirect(string.Format("~/EditRegisteredGirls.aspx?em={0}&er={1}&es={2}&Id={3}", Request.QueryString["em"], Request.QueryString["er"], Request.QueryString["es"], strID));
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
    }
}