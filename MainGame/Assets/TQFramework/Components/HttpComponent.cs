using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// HTTP组件
    /// </summary>
    public class HttpComponent : TQBaseComponent
    {
        [SerializeField]
        [Header("正式账号服务器")]
        private string m_WebAccountUrl;

        [SerializeField]
        [Header("测试账号服务器")]
        private string m_TestWebAccountUrl;

        [SerializeField]
        [Header("是否测试的")]
        private bool m_IsTest;
        /// <summary>
        /// 真实的服务器
        /// </summary>
        public string ReadAccountUrl
        {
            get
            {
                return m_IsTest ? m_TestWebAccountUrl : m_WebAccountUrl;
            }
        }

        private HttpManager m_HttpManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_HttpManager = new HttpManager();
        }

        /// <summary>
        /// 发送http数据
        /// </summary>
        /// <param name="url">路径</param>
        /// <param name="callBack">回调</param>
        /// <param name="isPost">是否有端口</param>
        /// <param name="json">是否获取数据</param>
        public void SendData(string url, HttpSendDataCallBack callBack, bool isPost = false,bool isGetData = false, Dictionary<string, object> dic = null)
        {
            m_HttpManager.SendData(url, callBack, isPost, isGetData, dic);
        }
        public override void Shutdown()
        {

        }
    }
}

