using LitJson;
using Mmcoy.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Xml.Linq;
using WebAccount.Common;

namespace WebAccount.Models.SDK
{
    #region SDK_Weixin_Config 微信配置
    /// <summary>
    /// 微信配置信息
    /// </summary>
    public class SDK_Weixin_Config
    {
        /// <summary>
        /// appid
        /// </summary>
        public string appid;

        /// <summary>
        /// 密钥
        /// </summary>
        public string secret;

        /// <summary>
        /// 商户号
        /// </summary>
        public string mch_id;

        /// <summary>
        /// 支付密钥
        /// </summary>
        public string payKey;

        /// <summary>
        /// 支付回调
        /// </summary>
        public string notify_url;
    }
    #endregion

    public class SDK_Weixin : IChannelSDK
    {
        public static SDK_Weixin_Config GetWeixinConfig(short channelId)
        {
            SDK_Weixin_Config config = new SDK_Weixin_Config();
            switch (channelId)
            {
                case 146: //悠游渠道
                    config.appid = "wx167eaa1c7c0d437e";
                    config.secret = "18847cc0c67a308e78cec47e427ec15f";
                    config.mch_id = "1503290621";
                    config.payKey = "YOUyou99YOUyou99YOUyou99YOUyou99";
                    config.notify_url = "http://115.28.26.235:8091/api/weixinrecharge";
                    break;
                case 600: //苹果渠道
                    config.appid = "wx86e63d040cbc2340";
                    config.secret = "a53264d7057e856d8d97c100bc4a91b9";
                    config.mch_id = "1503596641";
                    config.payKey = "YOUyou99YOUyou99YOUyou99YOUyou99";
                    config.notify_url = "http://115.28.26.235:8091/api/weixinrecharge";
                    break;
            }

            return config;
        }

        public RetValue DoAction(string actionName, string userData, object parameter)
        {
            RetValue retValue = null;
            switch (actionName.ToLower())
            {
                case "logon":
                    retValue = LogOn(userData, parameter);
                    break;
                case "getprepayid":
                    retValue = GetPrepayId(userData);
                    break;
            }
            return retValue;
        }

        #region LogOn 微信登录
        /// <summary>
        /// 微信登录
        /// </summary>
        /// <param name="userData"></param>
        /// <param name="parameter"></param>
        /// <returns></returns>
        public RetValue LogOn(string userData, object parameter)
        {
            LitJson.JsonData data = LitJson.JsonMapper.ToObject(userData);

            short channelId = data["ChannelId"].ToString().ToShort();
            string code = data["Code"].ToString();

            string access_token = "";
            string openid = "";
            //得到了token
            GetAccessTokenanAndOpenid(channelId, code, ref access_token, ref openid);

            string retAccount = GetUserInfo(channelId, access_token, openid, parameter);

            RetValue retValue = new RetValue();
            retValue.Value = retAccount;
            //retValue.Value= "{\"Id\":4035,\"UserName\":\"oy32t0d5ciW5ENgwYSNKdxGiKc-8\",\"Pwd\":null,\"YuanBao\":0,\"LastServerId\":38,\"LastServerName\":\"测试服2\",\"LastServerIP\":\"192.168.0.114\",\"LastServerPort\":1038,\"LastServerRunStatus\":2,\"CreateTime\":\"01/01/0001 00:00:00\",\"UpdateTime\":\"01/01/0001 00:00:00\",\"SDKNickName\":\"学无止境\"}";
            return retValue;
        }
        #endregion

        #region GetAccessTokenanAndOpenid 根据code获取access_token openid
        /// <summary>
        /// 根据code获取access_token openid
        /// </summary>
        /// <param name="code"></param>
        /// <param name="access_token"></param>
        /// <param name="openid"></param>
        private void GetAccessTokenanAndOpenid(short channelId, string code, ref string access_token, ref string openid)
        {
            SDK_Weixin_Config config = GetWeixinConfig(channelId);

            string url = string.Format("https://api.weixin.qq.com/sns/oauth2/access_token?appid={0}&secret={1}&code={2}&grant_type=authorization_code",
                config.appid, config.secret, code);

            JsonData data = JsonMapper.ToObject(NetWorkHttp.Instance.HttpGet(url));

            access_token = data["access_token"].ToString();
            openid = data["openid"].ToString();
        }
        #endregion

        #region GetUserInfo 获取用户信息
        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="channelId"></param>
        /// <param name="access_token"></param>
        /// <param name="openid"></param>
        /// <param name="parameter"></param>
        /// <returns></returns>
        private string GetUserInfo(short channelId, string access_token, string openid, object parameter)
        {
            string url = string.Format("https://api.weixin.qq.com/sns/userinfo?access_token={0}&openid={1}",
                access_token, openid);

            string content = NetWorkHttp.Instance.HttpGet(url);
            JsonData data = JsonMapper.ToObject(content);

            string nickname = data["nickname"].ToString(); //昵称
            string sex = data["sex"].ToString();
            string language = data["language"].ToString();
            string city = data["city"].ToString();
            string province = data["province"].ToString();
            string country = data["country"].ToString();
            string headimgurl = data["headimgurl"].ToString(); //头像图片
            string privilege = data["privilege"].ToString();
            string unionid = data["unionid"].ToString(); //微信返回的唯一id

            string[] arr = parameter as string[];

            AccountEntity entity = AccountCacheModel.Instance.LogOn(unionid, unionid, arr[0], arr[1]);

            if (entity != null)
            {
                //如果账户存在 返回账户信息
                RetAccountEntity retAccountEntity = new RetAccountEntity(entity);
                retAccountEntity.SDKNickName = nickname;
                return JsonMapper.ToJson(retAccountEntity);
            }
            else
            {
                //账户不存在 进行注册
                MFReturnValue<int> retValue = AccountCacheModel.Instance.Register(unionid, unionid, channelId, arr[0], arr[1]);

                int userID = retValue.Value;
                AccountEntity accountentity = AccountCacheModel.Instance.GetEntity(userID);

                RetAccountEntity retAccountEntity = new RetAccountEntity(accountentity);
                retAccountEntity.SDKNickName = nickname;
                return JsonMapper.ToJson(retAccountEntity);
            }
        }
        #endregion

        #region GetPrepayId 获取统一下单
        /// <summary>
        /// 获取统一下单
        /// </summary>
        /// <param name="userData"></param>
        /// <returns></returns>
        private RetValue GetPrepayId(string userData)
        {
            JsonData data = JsonMapper.ToObject(userData);

            short channelId = data["ChannelId"].ToString().ToShort();
            SDK_Weixin_Config config = GetWeixinConfig(channelId);

            string rechargeProductId = data["RechargeProductId"].ToString();
            string orderId = data["OrderId"].ToString();

            //产品说明
            string body = "充值产品";

            //随机字符串
            string nonce_str = new Random().Next(0, 99999).ToString();

            //商户订单号
            string out_trade_no = DateTime.Now.ToString("yyyyMMddHHmmssfff");

            //终端IP
            string spbill_create_ip = MFSystemUtil.GetIP();


            //总金额 订单总金额，单位为分
            int total_fee = RechargeShopDBModel.Instance.Get(int.Parse(rechargeProductId)).Price * 100;
            total_fee = 1; //临时改成1分

            //交易类型
            string trade_type = @"APP";

            string attach = string.Format("{0}^{1}", channelId, orderId);

            string temp = string.Format("appid={0}&attach={1}&body={2}&mch_id={3}&nonce_str={4}&notify_url={5}&out_trade_no={6}&spbill_create_ip={7}&total_fee={8}&trade_type={9}&key={10}", config.appid, attach, body, config.mch_id, nonce_str, config.notify_url, out_trade_no, spbill_create_ip, total_fee, trade_type, config.payKey);

            string sign = MFEncryptUtil.Md5(temp).ToUpper(); //签名是MD5大写形式

            string urlString = "https://api.mch.weixin.qq.com/pay/unifiedorder";

            StringBuilder sbr = new StringBuilder();

            sbr.Append("<xml>");
            sbr.AppendFormat("<appid><![CDATA[{0}]]></appid>", config.appid);
            sbr.AppendFormat("<attach><![CDATA[{0}]]></attach>", attach);
            sbr.AppendFormat("<body><![CDATA[{0}]]></body>", body);
            sbr.AppendFormat("<mch_id><![CDATA[{0}]]></mch_id>", config.mch_id);
            sbr.AppendFormat("<nonce_str><![CDATA[{0}]]></nonce_str>", nonce_str);
            sbr.AppendFormat("<out_trade_no><![CDATA[{0}]]></out_trade_no>", out_trade_no);
            sbr.AppendFormat("<spbill_create_ip><![CDATA[{0}]]></spbill_create_ip>", spbill_create_ip);
            sbr.AppendFormat("<total_fee><![CDATA[{0}]]></total_fee>", total_fee);
            sbr.AppendFormat("<trade_type><![CDATA[{0}]]></trade_type>", trade_type);
            sbr.AppendFormat("<notify_url><![CDATA[{0}]]></notify_url>", config.notify_url);
            sbr.AppendFormat("<sign><![CDATA[{0}]]></sign>", sign);
            sbr.Append("</xml>");

            string resposeContent = NetWorkHttp.Instance.HttpPost(urlString, sbr.ToString());

            RetValue retValue = new RetValue();

            XDocument doc = XDocument.Parse(resposeContent);

            XElement rootElement = doc.Root;

            string return_code = rootElement.Element("return_code").Value;
            if (return_code.Equals("SUCCESS", StringComparison.CurrentCultureIgnoreCase))
            {
                string prepay_id = rootElement.Element("prepay_id").Value;
                retValue.Value = GetPayReqInfo(config, prepay_id);
            }
            else
            {
                retValue.HasError = true;
            }
            return retValue;
        }
        #endregion

        #region GetPayReqInfo 获取支付信息
        /// <summary>
        /// 获取支付信息
        /// </summary>
        /// <param name="prepay_id"></param>
        /// <returns></returns>
        private string GetPayReqInfo(SDK_Weixin_Config config, string prepay_id)
        {
            //随机字符串
            string nonceStr = new Random(1).Next(0, 99999).ToString();

            //时间戳
            long timeStamp = MFDSAUtil.GetTimestamp();

            string package = "Sign=WXPay";

            string temp = string.Format("appid={0}&noncestr={1}&package={2}&partnerid={3}&prepayid={4}&timestamp={5}&key={6}",
                config.appid, nonceStr, package, config.mch_id, prepay_id, timeStamp, config.payKey);

            //签名
            string sign = MFEncryptUtil.Md5(temp).ToUpper(); //签名是MD5大写形式

            JsonData data = new JsonData();
            data["partnerId"] = config.mch_id; //商户号
            data["prepayId"] = prepay_id; //统一下单编号
            data["nonceStr"] = nonceStr; //随机字符串
            data["timeStamp"] = timeStamp; //时间戳
            data["package"] = package; //
            data["sign"] = sign; //签名

            return JsonMapper.ToJson(data);
        }
        #endregion
    }
}