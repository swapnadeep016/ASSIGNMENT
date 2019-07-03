using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOOKING_APPLICATION
{
    public partial class APIcONNECT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebClient client = new WebClient();
           
            string resp = client.DownloadString("http://api.apixu.com/v1/current.json?key=d220789591ae4645a39161925190307&q=Paris");
            dynamic obj = JsonConvert.DeserializeObject<dynamic>(resp);
            string temp = obj["current"]["temp_c"].ToString();
            Label1.Text = temp;

        }
    }
}