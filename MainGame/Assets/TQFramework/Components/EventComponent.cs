using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 事件组件
    /// </summary>
    public class EventComponent : TQBaseComponent
    {
        /// <summary>
        /// 事件管理器
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
        /// Sockets事件
        /// </summary>
        public SocketEvent SocketEvent;
        /// <summary>
        /// 通用事件
        /// </summary>
        public CommonEvent CommonEvent;
    }
}

