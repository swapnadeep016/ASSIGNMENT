using NewsAPI;
using NewsAPI.Constants;
using NewsAPI.Models;
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
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
           var newsApiClient = new NewsApiClient("4b1cd6fb7ae34d879897e0cda50ffae1");
           var articlesResponse = newsApiClient.GetEverything(new EverythingRequest
           {
               Q = "Apple",
               SortBy = SortBys.Popularity,
               Language = Languages.EN,
               From = new DateTime(2018, 1, 25)
           });

            Label1.Text = articlesResponse.ToString();


           if (articlesResponse.Status == Statuses.Ok)
           {
                String[] s = new String[4];
                int i = 0;
                // total results found
                Console.WriteLine(articlesResponse.TotalResults);
               // here's the first 20
               foreach (var article in articlesResponse.Articles)
               {
                    // title

                    s[i] = article.Title;
                    Label1.Text = s[i];

                    /*
                   Console.WriteLine(article.Title);
                   // author
                   Console.WriteLine(article.Author);
                   // description
                   Console.WriteLine(article.Description);
                   // url
                   Console.WriteLine(article.Url);
                   // image
                   Console.WriteLine(article.UrlToImage);
                   // published at
                   Console.WriteLine(article.PublishedAt);
                   */
               }
           }
           //Console.ReadLine();
          
            /*
    
            WebClient client = new WebClient();

            string resp = client.DownloadString("https://newsapi.org/v2/top-headlines?country=us&apiKey=4b1cd6fb7ae34d879897e0cda50ffae1");
            dynamic obj = JsonConvert.DeserializeObject<dynamic>(resp);
            
            string temp = obj["articles"]["name"].ToString();
            
            Label1.Text = temp;
           
    */



        }

    }
}