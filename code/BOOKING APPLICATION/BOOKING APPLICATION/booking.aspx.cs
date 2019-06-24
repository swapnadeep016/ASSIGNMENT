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


            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string pno = TextBox3.Text;
            string numberofPerson = DropDownList1.SelectedValue.ToString();
            string matches = DropDownList2.SelectedValue.ToString();
            string address = TextBox5.Text;
            string matchNo = GridView1.Rows[0].Cells[0].Text;
            string DateofMatch = GridView1.Rows[0].Cells[2].Text;
            string stadium = GridView1.Rows[0].Cells[3].Text;


            Session["total"] = "Hello !! " + name + ",  \n  Your ticket purchase has been confirmed from the email ID : " + TextBox2.Text +
                " .\n \nTickets has been booked for " + numberofPerson + "\n Billing address :" + address
                + "\n \n Payment will be recieved on stadium Counter. Kindly bring exact Change." + ". \n Date of Match :: " + DateofMatch
                + " \n Venue :: " + stadium;

            Response.Redirect("Print.aspx");










            /* 
             try
             {
                 SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                 client.EnableSsl = true;
                 client.DeliveryMethod = SmtpDeliveryMethod.Network;
                 client.Timeout = 10000;
                 client.UseDefaultCredentials = false;
                 //----------------------
                 client.Credentials = new System.Net.NetworkCredential("pasword@gmail.com", "pasword@");
                 MailMessage msg = new MailMessage();
                 //------------------------
                 msg.To.Add("pasword@gmail.com");// sender email id
                 msg.From = new MailAddress("pasword@gmail.com", "Mailer");// my email id
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
                Credentials = new NetworkCredential("pasword@gmail.com", "pasword@"),
                EnableSsl = true
            };
            client.Send("pasword@gmail.com", "pasword@gmail.com", "test", "testbody");
            Console.WriteLine("Sent");
            Console.ReadLine();
            
            */


            /*

            SmtpMail oMail = new SmtpMail("");
            SmtpClient oSmtp = new SmtpClient();

            // Your gmail email address
            oMail.From = "pasword@gmail.com";

            // Set recipient email address
            oMail.To = "pasword@gmail.com";

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
            oServer.User = "pasword@gmail.com";
            oServer.password = "pasword@";

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

    */







        }


    }
}