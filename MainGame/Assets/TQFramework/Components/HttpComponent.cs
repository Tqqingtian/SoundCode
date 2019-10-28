using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// HTTP���
    /// </summary>
    public class HttpComponent : TQBaseComponent
    {
        [SerializeField]
        [Header("��ʽ�˺ŷ�����")]
        private string m_WebAccountUrl;

        [SerializeField]
        [Header("�����˺ŷ�����")]
        private string m_TestWebAccountUrl;

        [SerializeField]
        [Header("�Ƿ���Ե�")]
        private bool m_IsTest;
        /// <summary>
        /// ��ʵ�ķ�����
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
        /// ����http����
        /// </summary>
        /// <param name="url">·��</param>
        /// <param name="callBack">�ص�</param>
        /// <param name="isPost">�Ƿ��ж˿�</param>
        /// <param name="json">�Ƿ��ȡ����</param>
        public void SendData(string url, HttpSendDataCallBack callBack, bool isPost = false,bool isGetData = false, Dictionary<string, object> dic = null)
        {
            m_HttpManager.SendData(url, callBack, isPost, isGetData, dic);
        }
        public override void Shutdown()
        {

        }
    }
}

