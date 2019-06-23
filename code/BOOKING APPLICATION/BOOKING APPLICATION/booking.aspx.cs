using System;
using System.Net;
using System.Net.Mail;
using System.Web.Mail;

namespace BOOKING_APPLICATION
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters[4].DefaultValue = DateTime.Now.ToString();
            SqlDataSource1.InsertParameters[5].DefaultValue = GridView1.Rows[0].Cells[3].Text;
            SqlDataSource1.InsertParameters[6].DefaultValue = GridView1.Rows[0].Cells[0].Text;
            SqlDataSource1.InsertParameters[8].DefaultValue = GridView1.Rows[0].Cells[2].Text;
            SqlDataSource1.Insert();
            /*
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Timeout = 10000;
                client.UseDefaultCredentials = false;
                //----------------------
                client.Credentials = new System.Net.NetworkCredential("passwordgmail.com", "password");
                MailMessage msg = new MailMessage();
                //------------------------
                msg.To.Add("passwordgmail.com");// sender email id
                msg.From = new MailAddress("passwordgmail.com", "Mailer");// my email id
                msg.Subject = "hello";
                msg.Body = "hello";
                client.Send(msg);
            }
           catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                //throw;
            }
            */
            /*
            var client = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("passwordgmail.com", "password"),
                EnableSsl = true
            };
            client.Send("passwordgmail.com", "passwordgmail.com", "test", "testbody");
            Console.WriteLine("Sent");
            Console.ReadLine();
            */





            SmtpMail oMail = new SmtpMail("");
            SmtpClient oSmtp = new SmtpClient();

            // Your gmail email address
            oMail.From = "passwordgmail.com";

            // Set recipient email address
            oMail.To = "passwordgmail.com";

            // Set email subject
            oMail.Subject = "test email from gmail account";

            // Set email body
            oMail.TextBody = "this is a test email sent from c# project with gmail.";
            // Gmail SMTP server address
            SmtpServer oServer = new SmtpServer("smtp.gmail.com");

            // Set 465 port
            oServer.Port = 465;

            // detect SSL/TLS automatically
            oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

            // Gmail user authentication
            // For example: your email is "gmailid@gmail.com", then the user should be the same
            oServer.User = "passwordgmail.com";
            oServer.Password = "password";

            try
            {
                Console.WriteLine("start to send email over SSL ...");
                oSmtp.SendMail(oServer, oMail);
                Console.WriteLine("email was sent successfully!");
            }
            catch (Exception ep)
            {
                Console.WriteLine("failed to send email with the following error:");
                Console.WriteLine(ep.Message);
            }






        }

        
    }
}