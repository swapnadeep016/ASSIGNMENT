using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOOKING_APPLICATION
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label7.Text = DateTime.Now.ToString();

            Label8.Text = GridView1.Rows[0].Cells[1].Text;

            Label9.Text = GridView1.Rows[0].Cells[0].Text;

            Label10.Text = GridView1.Rows[0].Cells[2].Text; ;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           Label7.Text = DateTime.Now.ToString();

            Label8.Text = GridView1.Rows[1].Cells[3].Text;

            Label9.Text = GridView1.Rows[0].Cells[0].Text;

            Label10.Text = GridView1.Rows[0].Cells[2].Text; ;

            SqlDataSource1.Insert();
        }

      
    }
}