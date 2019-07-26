using System;
using Nexmo.Api;
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

            var client = new Client(creds: new Nexmo.Api.Request.Credentials
            {
                ApiKey = "24785bea",
                ApiSecret = "gQo7Yp56k42dAToL"
            });
            var results = client.SMS.Send(request: new SMS.SMSRequest
            {
                from = "Nexmo",
                to = 353899476388,
                text = "Your Ticket Has Been Successfully Booked!!"
            });

            Response.Redirect("Print.aspx");







            







        }


    }
}