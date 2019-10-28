using LitJson;
using Mmcoy.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebAccount.Controllers.api
{
    public class InitController : ApiController
    {
        public string Get()
        {

            return string.Empty;
            //return MFDSAUtil.GetTimestamp();
        }

        public RetValue Post([FromBody]string jsonStr)
        {
            RetValue ret = new RetValue();

            JsonData jsonData = JsonMapper.ToObject(jsonStr);
            
            string channelId = jsonData["ChannelId"].ToString();
            string innerVersion = jsonData["InnerVersion"].ToString();
            //ConnectionString	"Data Source=.;Initial Catalog=DBAccount;Persist Security Info=True;User ID=youyou;Password=123456"	string

            ChannelEntity entity = ChannelCacheModel.Instance.GetEntity(string.Format("[ChannelId]={0} and [InnerVersion]={1}", channelId, innerVersion));
            if (entity == null)
            {
                ret.HasError = true;
                ret.ErrorCode = 1001;//"渠道号不存在";
            }
            else
            {
                JsonData data = new JsonData();

                data["ServerTime"] = MFDSAUtil.GetTimestamp();
                data["SourceVersion"] = entity.SourceVersion;
                data["SourceUrl"] = entity.SourceUrl;
                data["RechargeUrl"] = entity.RechargeUrl;
                data["TDAppId"] = entity.TDAppId;
                data["IsOpenTD"] = entity.IsOpenTD;
                data["PayServerNo"] = entity.PayServerNo;
              
                ret.Value = JsonMapper.ToJson(data);
            }

            return ret;
        }
    }
}
