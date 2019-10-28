using LitJson;
using Mmcoy.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using WebAccount.Models.SDK;

namespace WebAccount.Controllers.api
{
    public class SDKAccountController : ApiController
    {
        // GET: api/Account
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        private Dictionary<string, IChannelSDK> m_SDKDic = new Dictionary<string, IChannelSDK>();

        public RetValue Post([FromBody]string jsonStr)
        {
            RetValue ret = new RetValue();

            JsonData jsonData = JsonMapper.ToObject(jsonStr);

            //时间戳
            long t = Convert.ToInt64(jsonData["t"].ToString());
            string deviceIdentifier = jsonData["deviceIdentifier"].ToString();
            string deviceModel = jsonData["deviceModel"].ToString();
            string sign = jsonData["sign"].ToString();

            //1.判断时间戳 如果大于3秒 直接返回错误
            if (MFDSAUtil.GetTimestamp() - t > 3)
            {
                ret.HasError = true;
                ret.ErrorCode = 1002; //"请求无效";
                return ret;
            }

            //2.验证签名
            string signServer = MFEncryptUtil.Md5(string.Format("{0}:{1}", t, deviceIdentifier));
            if (!signServer.Equals(sign, StringComparison.CurrentCultureIgnoreCase))
            {
                ret.HasError = true;
                ret.ErrorCode = 1002; //"请求无效";
                return ret;
            }

            string sdkName = jsonData["SDKName"].ToString();
            string actionName = jsonData["ActionName"].ToString();
            string userData = jsonData["UserData"].ToString();

            IChannelSDK sdk = null;
            m_SDKDic.TryGetValue(sdkName, out sdk);
            if (sdk == null)
            {
                Type m_SdkType = Type.GetType(string.Format("WebAccount.Models.SDK.{0}", sdkName));
                sdk = Activator.CreateInstance(m_SdkType) as IChannelSDK;
                m_SDKDic[sdkName] = sdk;
            }
            
            return sdk.DoAction(actionName, userData, new string[] { deviceIdentifier , deviceModel });
        }
    }
}