/********************************     
* ����ʱ�䣺2019-05-24 00:55:51   
* ��Ŀ���ƣ�MMO
* ��   �ߣ�������
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
        /// socket�¼�
        /// </summary>
        public SocketEvent SocketEvent
        {
            get;
            private set;
        }
        /// <summary>
        /// ͨ���¼�
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
        /// ��Դж��
        /// </summary>
        public void Dispose()
        {
            SocketEvent.Dispose();
            CommonEvent.Dispose();
            //Debug.Log("�ͷ�");
        }
    }

}
