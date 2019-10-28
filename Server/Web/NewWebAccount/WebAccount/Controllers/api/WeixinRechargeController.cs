using Mmcoy.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Xml.Linq;
using WebAccount.Common;
using WebAccount.Models.SDK;

namespace WebAccount.Controllers.api
{
    public class WeixinRechargeController : ApiController
    {
        public string Get()
        {
            StringBuilder sbrReturn = new StringBuilder();

            sbrReturn.Append("<xml>\n");
            sbrReturn.Append("<return_code><![CDATA[SUCCESS]]></return_code>\n");
            sbrReturn.Append("<return_msg><![CDATA[OK]]></return_msg>\n");
            sbrReturn.Append("</xml>");

            return sbrReturn.ToString();
        }



        [System.Web.Http.HttpPost]
        public HttpResponseMessage Post()
        {
            #region 接收通知
            byte[] buffer = new byte[HttpContext.Current.Request.InputStream.Length];
            HttpContext.Current.Request.InputStream.Read(buffer, 0, buffer.Length);
            string req = System.Text.Encoding.Default.GetString(buffer);
            req = HttpContext.Current.Server.UrlDecode(req);

            string xml = req;

            LogHelper.WriteLog(typeof(WeixinRechargeController), "收到xml数据");
            LogHelper.WriteLog(typeof(WeixinRechargeController), xml);


            XDocument receiveDoc = XDocument.Parse(xml);
            XElement root = receiveDoc.Root;

            string return_code = "";
            XElement return_codeXE = root.Element("return_code");
            if (return_codeXE != null)
            {
                return_code = return_codeXE.Value;
            }

            if (return_code == "SUCCESS")
            {
                StringBuilder sbr = new StringBuilder();

                //应用ID
                XElement appidXE = root.Element("appid");
                if (appidXE != null)
                {
                    string appid = appidXE.Value;
                    sbr.AppendFormat("appid={0}", appid);
                }

                string orderId = ""; //订单号
                short channelId = 0; //渠道号

                //商家数据包
                XElement attachXE = root.Element("attach");
                if (attachXE != null)
                {
                    string attach = attachXE.Value;
                    string[] arr = attach.Split('^');
                    channelId = arr[0].ToShort();
                    orderId = arr[1];

                    sbr.AppendFormat("&attach={0}", attach);
                }

                //付款银行
                XElement bank_typeXE = root.Element("bank_type");
                if (bank_typeXE != null)
                {
                    string bank_type = bank_typeXE.Value;
                    sbr.AppendFormat("&bank_type={0}", bank_type);
                }

                //现金支付金额
                XElement cash_feeXE = root.Element("cash_fee");
                if (cash_feeXE != null)
                {
                    int cash_fee = cash_feeXE.Value.ToInt();
                    sbr.AppendFormat("&cash_fee={0}", cash_fee);
                }

                //现金支付货币类型
                XElement cash_fee_typeXE = root.Element("cash_fee_type");
                if (cash_fee_typeXE != null)
                {
                    string cash_fee_type = cash_fee_typeXE.Value;
                    sbr.AppendFormat("&cash_fee_type={0}", cash_fee_type);
                }

                //代金券使用数量
                XElement coupon_countXE = root.Element("coupon_count");
                if (coupon_countXE != null)
                {
                    int coupon_count = coupon_countXE.Value.ToInt();
                    sbr.AppendFormat("&coupon_count={0}", coupon_count);
                }

                //代金券金额
                XElement coupon_feeXE = root.Element("coupon_fee");
                if (coupon_feeXE != null)
                {
                    int coupon_fee = coupon_feeXE.Value.ToInt();
                    sbr.AppendFormat("&coupon_fee={0}", coupon_fee);
                }

                //代金券ID
                XElement coupon_idXE = root.Element("coupon_id");
                if (coupon_idXE != null)
                {
                    string coupon_id = coupon_idXE.Value;
                    sbr.AppendFormat("&coupon_id={0}", coupon_id);
                }

                //设备号
                XElement device_infoXE = root.Element("device_info");
                if (device_infoXE != null)
                {
                    string device_info = device_infoXE.Value;
                    sbr.AppendFormat("&device_info={0}", device_info);
                }

                //错误代码
                XElement err_codeXE = root.Element("err_code");
                if (err_codeXE != null)
                {
                    string err_code = err_codeXE.Value;
                    sbr.AppendFormat("&err_code={0}", err_code);
                }

                //错误代码描述
                XElement err_code_desXE = root.Element("err_code_des");
                if (err_code_desXE != null)
                {
                    string err_code_des = err_code_desXE.Value;
                    sbr.AppendFormat("&err_code_des={0}", err_code_des);
                }

                //货币种类
                XElement fee_typeXE = root.Element("fee_type");
                if (fee_typeXE != null)
                {
                    string fee_type = fee_typeXE.Value;
                    sbr.AppendFormat("&fee_type={0}", fee_type);
                }

                //是否关注公众账号
                XElement is_subscribeXE = root.Element("is_subscribe");
                if (is_subscribeXE != null)
                {
                    string is_subscribe = is_subscribeXE.Value;
                    sbr.AppendFormat("&is_subscribe={0}", is_subscribe);
                }

                //商户号
                XElement mch_idXE = root.Element("mch_id");
                if (mch_idXE != null)
                {
                    string mch_id = mch_idXE.Value;
                    sbr.AppendFormat("&mch_id={0}", mch_id);
                }

                //随机字符串
                XElement nonce_strXE = root.Element("nonce_str");
                if (nonce_strXE != null)
                {
                    string nonce_str = nonce_strXE.Value;
                    sbr.AppendFormat("&nonce_str={0}", nonce_str);
                }

                //用户标识
                XElement openidXE = root.Element("openid");
                if (openidXE != null)
                {
                    string openid = openidXE.Value;
                    sbr.AppendFormat("&openid={0}", openid);
                }


                //商户订单号
                XElement out_trade_noXE = root.Element("out_trade_no");
                if (out_trade_noXE != null)
                {
                    string out_trade_no = out_trade_noXE.Value;
                    sbr.AppendFormat("&out_trade_no={0}", out_trade_no);
                }

                //业务结果
                XElement result_codeXE = root.Element("result_code");
                if (result_codeXE != null)
                {
                    string result_code = result_codeXE.Value;
                    sbr.AppendFormat("&result_code={0}", result_code);
                }

                //返回状态码
                //return_code
                sbr.AppendFormat("&return_code={0}", return_code);

                //返回信息
                XElement return_msgXE = root.Element("return_msg");
                if (return_msgXE != null)
                {
                    string return_msg = return_msgXE.Value;
                    sbr.AppendFormat("&return_msg={0}", return_msg);
                }

                //签名
                string sign = "";
                XElement signXE = root.Element("sign");
                if (signXE != null)
                {
                    sign = signXE.Value;
                }

                //支付完成时间
                XElement time_endXE = root.Element("time_end");
                if (time_endXE != null)
                {
                    string time_end = time_endXE.Value;
                    sbr.AppendFormat("&time_end={0}", time_end);
                }

                //总金额
                XElement total_feeXE = root.Element("total_fee");
                if (total_feeXE != null)
                {
                    int total_fee = total_feeXE.Value.ToInt();
                    sbr.AppendFormat("&total_fee={0}", total_fee);
                }

                //交易类型
                XElement trade_typeXE = root.Element("trade_type");
                if (trade_typeXE != null)
                {
                    string trade_type = trade_typeXE.Value;
                    sbr.AppendFormat("&trade_type={0}", trade_type);
                }

                //微信支付订单号
                XElement transaction_idXE = root.Element("transaction_id");
                if (transaction_idXE != null)
                {
                    string transaction_id = transaction_idXE.Value;
                    sbr.AppendFormat("&transaction_id={0}", transaction_id);
                }


                sbr.AppendFormat("&key={0}", SDK_Weixin.GetWeixinConfig(channelId).payKey);

                //SDK_Weixin.appid
                //校验签名
                string mySign = MFEncryptUtil.Md5(sbr.ToString()).ToUpper(); //签名是MD5大写形式

                if (mySign == sign)
                {
                    //签名验证通过

                    //订单号 付费服务器识别码_玩家账号_要充值到哪个GameServerId_角色ID_充值的产品Id_时间
                    string[] arr = orderId.Split('_');
                    if (arr.Length == 6)
                    {
                        //判断订单号是否已经处理过
                        RechargeLogEntity searchEntity = RechargeLogCacheModel.Instance.GetEntity("OrderId='" + orderId + "'");
                        if (searchEntity == null)
                        {
                            //1.记录充值日志
                            RechargeLogEntity rechargeLogEntity = new RechargeLogEntity();
                            rechargeLogEntity.AccountId = arr[1].ToInt();
                            rechargeLogEntity.Status = Mmcoy.Framework.AbstractBase.EnumEntityStatus.Released;
                            rechargeLogEntity.ChannelId = channelId;
                            rechargeLogEntity.GameServerId = arr[2].ToInt();
                            rechargeLogEntity.RoldId = arr[3].ToInt();
                            rechargeLogEntity.RechargeProductId = arr[4].ToShort();
                            rechargeLogEntity.OrderId = orderId;
                            rechargeLogEntity.CreateTime = DateTime.Now;

                            RechargeLogCacheModel.Instance.Create(rechargeLogEntity);


                            //2.找到对应的游戏服
                            int gameServerId = arr[2].ToInt();

                            GameServerEntity entity = GameServerCacheModel.Instance.GetEntity(gameServerId);
                            if (entity != null)
                            {
                                try
                                {
                                    //发送socket请求 给游戏服
                                    Socket rechargeServer = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                                    rechargeServer.Connect(new IPEndPoint(IPAddress.Parse(entity.Ip), entity.Port));
                                    string str = string.Format("{0}_{1}_{2}", channelId, arr[3], arr[4]);
                                    rechargeServer.Send(System.Text.UTF8Encoding.UTF8.GetBytes(str));
                                }
                                catch { }
                            }
                        }
                    }
                }
            }

            #endregion

            #region 返回通知

            StringBuilder sbrReturn = new StringBuilder();

            sbrReturn.Append("<xml>");
            sbrReturn.Append("<return_code><![CDATA[SUCCESS]]></return_code>");
            sbrReturn.Append("<return_msg><![CDATA[OK]]></return_msg>");
            sbrReturn.Append("</xml>");

            //一定要这样写 才能正确的返回xml格式数据给微信，直接返回字符串 微信不识别，那么微信还会重复调用这个接口进行通知
            return new HttpResponseMessage()
            {
                Content = new StringContent(sbrReturn.ToString(), Encoding.UTF8, "application/xml")
            };
            #endregion
        }
    }
}