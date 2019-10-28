using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    public class SocketComponent : TQBaseComponent,IUpdateComponent
    {
        [Header("ÿ֡��󷢰�����")]
        public int MaxSendCount = 5;
        [Header("ÿ�η�������ֽ�")]
        public int MaxSendByteCount = 1024;

        [Header("ÿ֡����հ�����")]
        public int MaxReceiveCount = 5;

        [Header("�������")]
        public int HearbeatInterval = 10;

        /// <summary>
        /// �ϴε�����ʱ��
        /// </summary>
        private float m_PrevHearbeatTime = 0;

        /// <summary>
        /// pingֵ�����룩
        /// </summary>
        [HideInInspector]
        public int PingValue;

        /// <summary>
        /// ��Ϸ������ʱ��
        /// </summary>
        [HideInInspector]
        public long GameServerTime;

        /// <summary>
        /// ��Ϸ�������Ա��ʱ��
        /// </summary>
        [HideInInspector]
        public float CheckServerTime;

        
        private SocketManager m_SocketManager;

        /// <summary>
        /// �Ƿ��Ѿ����ӵ�������
        /// </summary>
        private bool m_IsConnectToMainSocket = false;
        /// <summary>
        /// �����õ�ms
        /// </summary>
        public MMO_MemoryStream SocketSendMS
        {
            get;
            private set;
        }
        /// <summary>
        /// �����õ�ms
        /// </summary>
        public MMO_MemoryStream SocketReceiveMS
        {
            get;
            private set;
        }

        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_SocketManager = new SocketManager();
            SocketSendMS = new MMO_MemoryStream();
            SocketReceiveMS = new MMO_MemoryStream();
            //MMO_MemoryStream = new MMO_MemoryStream();
        }

        protected override void OnStart()
        {
            base.OnStart();
            m_MainSocket = CreateSocketTcpRoutime();
            m_MainSocket.OnConnectOK = () =>
            {
                //�Ѿ���������
                m_IsConnectToMainSocket = true;
            };

            SocketProtoListener.AddProtoListener();
        }

        /// <summary>
        /// ע��socketTcp������
        /// </summary>
        /// <param name="routime"></param>
        internal void RegisterSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketManager.RegisterSocketTcpRoutime(routime);
        }

        /// <summary>
        /// �Ƴ�socketTcp������
        /// </summary>
        /// <param name="routime"></param>
        internal void RemoveSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketManager.RemoveSocketTcpRoutime(routime);
        }
        /// <summary>
        /// ����SocketTcp������
        /// </summary>
        /// <returns></returns>
        public SocketTcpRoutime CreateSocketTcpRoutime()
        {
            //�ӳ��л�ȡ��ʲôʱ��سأ�
            return GameEntry.Pool.DequeueClassObject<SocketTcpRoutime>();
        }
        public void OnUpdate()
        {
            m_SocketManager.OnUpdate();
            if (m_IsConnectToMainSocket)
            {
                if (Time.realtimeSinceStartup>m_PrevHearbeatTime+HearbeatInterval)
                {
                    //��������
                    m_PrevHearbeatTime = Time.realtimeSinceStartup;
                    System_HeartbeatProto proto = new System_HeartbeatProto();
                    proto.LocalTime = Time.realtimeSinceStartup * 1000;
                    CheckServerTime = Time.realtimeSinceStartup;//�ͷ������Ա�ʱ��
                    SendMainMsg(proto);
                }
            }
        }

        public override void Shutdown()
        {
            m_IsConnectToMainSocket = false;
            m_SocketManager.Dispose();
            GameEntry.Pool.EnqueueClassObject(m_MainSocket);
            SocketProtoListener.RemoveProtoListener();

            SocketSendMS.Dispose();
            SocketSendMS.Close();
            SocketReceiveMS.Dispose();
            SocketReceiveMS.Close();

            //MMO_MemoryStream.Dispose();
            //MMO_MemoryStream.Close();
        }

        //====================
        /// <summary>
        /// ��socket
        /// </summary>
        private SocketTcpRoutime m_MainSocket;



        /// <summary>
        /// ������socket
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="port"></param>
        public void ConnerToMainSocket(string ip,int port)
        {
            m_MainSocket.Connect(ip, port);
        }
        /// <summary>
        /// ������Ϣ
        /// </summary>
        /// <param name="buffer"></param>
        public void SendMsg(byte[] buffer)
        {
            m_MainSocket.SendMsg(buffer);
        }
        /// <summary>
        /// ������Ϣ
        /// </summary>
        /// <param name="buffer"></param>
        public void SendMainMsg(IProto proto)
        {
#if DEBUG_LOG_PROTO
        Debug.Log("<color=#410505>������Ϣ:</color><color=#000000>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        Debug.Log("<color=#410505>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif

            m_MainSocket.SendMsg(proto.ToArray());
        }
    }
}

