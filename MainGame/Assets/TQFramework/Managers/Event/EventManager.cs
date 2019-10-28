/********************************     
* 创建时间：2019-05-24 00:55:51   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
namespace TQ
{
    public class EventManager : ManagerBase, IDisposable
    {
        /// <summary>
        /// socket事件
        /// </summary>
        public SocketEvent SocketEvent
        {
            get;
            private set;
        }
        /// <summary>
        /// 通用事件
        /// </summary>
        public CommonEvent CommonEvent
        {
            get;
            private set;
        }

        public EventManager()
        {
            SocketEvent = new SocketEvent();
            CommonEvent = new CommonEvent();
        }


        /// <summary>
        /// 资源卸载
        /// </summary>
        public void Dispose()
        {
            SocketEvent.Dispose();
            CommonEvent.Dispose();
            //Debug.Log("释放");
        }
    }

}
