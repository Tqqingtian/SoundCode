using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// �¼����
    /// </summary>
    public class EventComponent : TQBaseComponent
    {
        /// <summary>
        /// �¼�������
        /// </summary>
        private EventManager m_EventManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_EventManager = new EventManager();

            SocketEvent = m_EventManager.SocketEvent;
            CommonEvent = m_EventManager.CommonEvent;
           
        }


        public override void Shutdown()
        {
            m_EventManager.Dispose();
            //m_EventManager = null;
        }
        /// <summary>
        /// Sockets�¼�
        /// </summary>
        public SocketEvent SocketEvent;
        /// <summary>
        /// ͨ���¼�
        /// </summary>
        public CommonEvent CommonEvent;
    }
}

