using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    public class SocketManager : ManagerBase,IDisposable
    {
        /// <summary>
        /// socketTcp���ʵ��б�
        /// </summary>
        private LinkedList<SocketTcpRoutime> m_SocketTcpRoutimesList;

        public SocketManager()
        {
            m_SocketTcpRoutimesList = new LinkedList<SocketTcpRoutime>();
        }
        /// <summary>
        /// ע��socketTcp������
        /// </summary>
        /// <param name="routime"></param>
        internal void RegisterSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketTcpRoutimesList.AddFirst(routime);
        }

        /// <summary>
        /// �Ƴ�socketTcp������
        /// </summary>
        /// <param name="routime"></param>
        internal void RemoveSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketTcpRoutimesList.Remove(routime);
        }

        internal void OnUpdate()
        {
            for (LinkedListNode<SocketTcpRoutime> curr = m_SocketTcpRoutimesList.First; curr != null; curr = curr.Next)
            {
                curr.Value.OnUpdate();
            }
        }

        public void Dispose()
        {
            m_SocketTcpRoutimesList.Clear();
        }
    }
}

