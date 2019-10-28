using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace WebAccount.Common
{
    public class NetWorkHttp : Singleton<NetWorkHttp>
    {
        public string HttpGet(string url)
        {
            string result;

            try
            {
                var webClient = new WebClient { Encoding = Encoding.UTF8 };
                result = webClient.DownloadString(url);
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;
        }

        public string HttpPost(string url, string postStr = "")
        {
            string result;

            try
            {
                var webClient = new WebClient { Encoding = Encoding.UTF8 };

                var sendData = Encoding.UTF8.GetBytes(postStr);

                webClient.Headers.Add("Content-Type", "application/x-www-form-urlencoded");

                var readData = webClient.UploadData(url, "POST", sendData);

                result = Encoding.UTF8.GetString(readData);

            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;
        }
    }
}