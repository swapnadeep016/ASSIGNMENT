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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters.Add("Date_of_booking",DateTime.Now.ToString());
   
            SqlDataSource1.InsertParameters.Add("Stadium", GridView1.Rows[0].Cells[0].Text);

            SqlDataSource1.InsertParameters.Add("MatchNo",GridView1.Rows[0].Cells[0].Text);

            SqlDataSource1.InsertParameters.Add("Date_of_match", GridView1.Rows[0].Cells[0].Text);

            SqlDataSource1.Insert();
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}