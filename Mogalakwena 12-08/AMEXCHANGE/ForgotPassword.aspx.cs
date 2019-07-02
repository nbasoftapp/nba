using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SendPassword()
        {
            string emailAddress, userFulname, password;
            //get the next value of the membership num
           
            GlobalMethods.openConnection();
            string Qry = "SELECT email, password, name FROM Users WHERE [uname] = '" + txtUsername.Value + "'";
            SqlCommand sqlCmd = new SqlCommand(Qry, GlobalMethods.sqlcon);
            SqlDataReader sqlReader;

            sqlReader = sqlCmd.ExecuteReader();

            if (sqlReader.Read())
            {
                emailAddress = sqlReader[0].ToString();
                password = sqlReader[1].ToString();
                userFulname = sqlReader[2].ToString();
            if (emailAddress.ToUpper() == "")
                {
                    divError.Visible = true;
                    txtError.InnerHtml = "You do not have an email address";
                }
                else
                {
                    //do nothing
                    System.Net.Mail.MailMessage msgMail = new System.Net.Mail.MailMessage();
                    msgMail.To.Add(new MailAddress(emailAddress));
                    msgMail.From = new MailAddress("Community@es3.co.za", "Admin system");
                    msgMail.Subject = "Community Survey Admin System Password recovery";

                    string body = "Hi " + userFulname + ",<br/> The following is your login details <br/> Link: http://mogalakwenamine.es3.co.za/, <br/> <strong> Username: " + txtUsername.Value + "<br/> Password: " + password + " <strong/><br/> Regards <br/> Community Survey";

                    msgMail.Body = body;
                    msgMail.BodyEncoding = System.Text.Encoding.UTF8;

                    // Set the format of the mail message body as HTML
                    msgMail.IsBodyHtml = true;
                    // Set the priority of the mail message to normal
                    msgMail.Priority = MailPriority.Normal;
                    // Instantiate a new instance of SmtpClient
                    SmtpClient mSmtpClient = new SmtpClient();
                    //   mSmtpClient.EnableSsl = True
                    // Send the mail message
                    mSmtpClient.Send(msgMail);

                    divSuc.Visible = true;
                    txtSuc.InnerHtml = "Your password has been sent to " + emailAddress;
                    txtUsername.Value = "";
                }
            }
            else
            {
                divError.Visible = true;
                txtError.InnerHtml = "Unable to retrieve your password,check your username and make sure you have an email, Contact your Administrator for further help";
            }
            GlobalMethods.closeConnection();

            

        }

        protected void btnForgot_Click(object sender, EventArgs e)
        {
            try
            {
                SendPassword();
            }
            catch (Exception ex)
            { 
                divError.Visible = true;
                txtError.InnerHtml = ex.Message.ToString();
            }

        }
    }
}