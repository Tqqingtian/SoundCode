using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    public class SocketComponent : TQBaseComponent,IUpdateComponent
    {
        [Header("每帧最大发包数量")]
        public int MaxSendCount = 5;
        [Header("每次发包最大字节")]
        public int MaxSendByteCount = 1024;

        [Header("每帧最大收包数量")]
        public int MaxReceiveCount = 5;

        [Header("心跳间隔")]
        public int HearbeatInterval = 10;

        /// <summary>
        /// 上次的心跳时间
        /// </summary>
        private float m_PrevHearbeatTime = 0;

        /// <summary>
        /// ping值（毫秒）
        /// </summary>
        [HideInInspector]
        public int PingValue;

        /// <summary>
        /// 游戏服务器时间
        /// </summary>
        [HideInInspector]
        public long GameServerTime;

        /// <summary>
        /// 游戏服务器对表的时刻
        /// </summary>
        [HideInInspector]
        public float CheckServerTime;

        
        private SocketManager m_SocketManager;

        /// <summary>
        /// 是否已经连接到服务器
        /// </summary>
        private bool m_IsConnectToMainSocket = false;
        /// <summary>
        /// 发送用的ms
        /// </summary>
        public MMO_MemoryStream SocketSendMS
        {
            get;
            private set;
        }
        /// <summary>
        /// 接收用的ms
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
                //已经建立连接
                m_IsConnectToMainSocket = true;
            };

            SocketProtoListener.AddProtoListener();
        }

        /// <summary>
        /// 注册socketTcp访问器
        /// </summary>
        /// <param name="routime"></param>
        internal void RegisterSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketManager.RegisterSocketTcpRoutime(routime);
        }

        /// <summary>
        /// 移除socketTcp访问器
        /// </summary>
        /// <param name="routime"></param>
        internal void RemoveSocketTcpRoutime(SocketTcpRoutime routime)
        {
            m_SocketManager.RemoveSocketTcpRoutime(routime);
        }
        /// <summary>
        /// 创建SocketTcp访问器
        /// </summary>
        /// <returns></returns>
        public SocketTcpRoutime CreateSocketTcpRoutime()
        {
            //从池中获取（什么时候回池）
            return GameEntry.Pool.DequeueClassObject<SocketTcpRoutime>();
        }
        public void OnUpdate()
        {
            m_SocketManager.OnUpdate();
            if (m_IsConnectToMainSocket)
            {
                if (Time.realtimeSinceStartup>m_PrevHearbeatTime+HearbeatInterval)
                {
                    //发送心跳
                    m_PrevHearbeatTime = Time.realtimeSinceStartup;
                    System_HeartbeatProto proto = new System_HeartbeatProto();
                    proto.LocalTime = Time.realtimeSinceStartup * 1000;
                    CheckServerTime = Time.realtimeSinceStartup;//和服务器对表时刻
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
        /// 主socket
        /// </summary>
        private SocketTcpRoutime m_MainSocket;



        /// <summary>
        /// 连接主socket
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="port"></param>
        public void ConnerToMainSocket(string ip,int port)
        {
            m_MainSocket.Connect(ip, port);
        }
        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="buffer"></param>
        public void SendMsg(byte[] buffer)
        {
            m_MainSocket.SendMsg(buffer);
        }
        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="buffer"></param>
        public void SendMainMsg(IProto proto)
        {
#if DEBUG_LOG_PROTO
        Debug.Log("<color=#410505>发送消息:</color><color=#000000>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        Debug.Log("<color=#410505>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif

            m_MainSocket.SendMsg(proto.ToArray());
        }
    }
}

