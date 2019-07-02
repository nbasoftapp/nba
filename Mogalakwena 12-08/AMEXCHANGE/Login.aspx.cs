using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class Login : System.Web.UI.Page
    {
        public string UserRole, fName, status, roleId;
        public bool correctUser;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (!GlobalMethods.checkUserName(txtUsername.Value))
                {
                    divError.Visible = true;
                    txtError.InnerHtml = "Incorrect username or password";
                    txtUsername.Value = "";
                    txtPassword.Value = "";
                    txtUsername.Focus();
                }
                else
                {

                    if (!GlobalMethods.checkUserStatus(txtUsername.Value))
                    {
                        divError.Visible = true;
                        txtError.InnerHtml = "Sorry your user account has been deactivated, please contact your Administrator";
                        txtUsername.Value = "";
                        txtPassword.Value = "";
                        txtUsername.Focus();
                    }
                    else
                    {
                        if (!GlobalMethods.checkPassword(txtUsername.Value, txtPassword.Value))
                        {
                            divError.Visible = true;
                            txtError.InnerHtml = "Incorrect username or password";
                            txtUsername.Value = "";
                            txtPassword.Value = "";
                            txtPassword.Focus();
                        }
                        else
                        {
                            successfullog();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
              //  alert("Error: " + ex.Message.ToString());
                divError.Visible = true;
                txtError.InnerHtml = ex.Message.ToString();
            }

        }
        private void successfullog()
        {
            try
            {

                //Last login update
                dtsLogin.UpdateCommand = "UPDATE Users SET [lastLogOn] = GETDATE() WHERE uname='" + txtUsername.Value + "'";
                dtsLogin.Update();

                //Get Current Session
                Session["username"] = txtUsername.Value;

                Session["FirstName"] = fName;
                //check roles and redirect
                checkRole(txtUsername.Value);

            }
            catch (Exception ex)
            {
                alert("Error: " + ex.Message.ToString());
            }
        }

        private void checkRole(string name)
        {
            GlobalMethods.openConnection();
            string Qry = "SELECT [roleid] FROM Users WHERE [uname] = '" + name + "'";
            SqlCommand sqlCmd = new SqlCommand(Qry, GlobalMethods.sqlcon);
            SqlDataReader sqlReader;

            sqlReader = sqlCmd.ExecuteReader();

            if (sqlReader.Read())
            {
                roleId = sqlReader[0].ToString();
            }
            GlobalMethods.closeConnection();


            if (Convert.ToInt32(roleId) == 1)
            {
                Session["Role"] = "Administrator";
                Response.Redirect("Admin.aspx");
            }
            if (Convert.ToInt32(roleId) == 2)
            {
                Session["Role"] = "Surveyor";
                Response.Redirect("HouseholdMember.aspx");
            }

        }

        //protected void btnCancel_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("LandingPage.aspx");
        //}

        private void alert(string message1)
        {
            //this is the javascript alert message,
            System.Text.StringBuilder sb1 = new System.Text.StringBuilder();

            sb1.Append("<script type = \'text/javascript\'>");

            sb1.Append("window.onload=function(){");

            sb1.Append("alert(\'");

            sb1.Append(message1);

            sb1.Append("\')};");

            sb1.Append("</script>");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb1.ToString());
        }

    }
}