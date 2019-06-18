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
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters[4].DefaultValue = DateTime.Now.ToString();
            SqlDataSource1.InsertParameters[5].DefaultValue = GridView1.Rows[0].Cells[3].Text;
            SqlDataSource1.InsertParameters[6].DefaultValue = GridView1.Rows[0].Cells[0].Text;
           SqlDataSource1.InsertParameters[8].DefaultValue = GridView1.Rows[0].Cells[2].Text;
            SqlDataSource1.Insert();
        }

        
    }
}