using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAccount
{
    public struct ProtoCode
    {
        /// <summary>
        /// 请求延迟
        /// </summary>
        public const int RequestDelay = 1002;

        /// <summary>
        /// 签名无效
        /// </summary>
        public const int SignatureInvalid = 1003;

        /// <summary>
        /// 账号已存在 注册失败
        /// </summary>
        public const int AccountRegistrationFailed = 1004;

        /// <summary>
        /// 账号不存在 登录失败
        /// </summary>
        public const int AccountDoesNotExist = 1005;

        /// <summary>
        /// 渠道号不存在
        /// </summary>
        public const int ChannelNumberNoExist = 1006;



    }
}