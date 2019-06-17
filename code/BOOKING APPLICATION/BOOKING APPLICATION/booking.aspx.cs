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

            SqlDataSource1.InsertParameters["Date_of_booking"].DefaultValue = DateTime.Now.ToString();

            SqlDataSource1.InsertParameters["Stadium"].DefaultValue = GridView1.Rows[0].Cells[3].Text;

            SqlDataSource1.InsertParameters["MatchNo"].DefaultValue = GridView1.Rows[0].Cells[0].Text;

            SqlDataSource1.InsertParameters["Date_of_match"].DefaultValue = GridView1.Rows[0].Cells[2].Text;

            SqlDataSource1.Insert();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}