using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace AMEXCHANGE
{
    public class SendEmail
    {
        public static void Email(string subject, string address, string name, string message)
        {

            System.Net.Mail.MailMessage msgMail = new System.Net.Mail.MailMessage();

            //page identifier

            msgMail.To.Add(new MailAddress(address));

            msgMail.From = new MailAddress("ssc@es3.co.za");
            msgMail.Subject = subject;

            string body = "<strong>Hi</strong>,"+ name +".<br/><br/>" + message + "<br/>";
            msgMail.Body = body;
            msgMail.BodyEncoding = System.Text.Encoding.UTF8;
            // Set the format of the mail message body as HTML
            msgMail.IsBodyHtml = true;
            // Set the priority of the mail message to normal
            msgMail.Priority = MailPriority.Normal;
            // Instantiate a new instance of SmtpClient
            SmtpClient mSmtpClient = new SmtpClient();
            // Send the mail message
            mSmtpClient.Send(msgMail);


        }
    }
}