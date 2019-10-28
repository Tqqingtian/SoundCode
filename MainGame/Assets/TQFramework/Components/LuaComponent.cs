/********************************     
* 创建时间：2019-06-30 21:56:03   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// lua组件
    /// </summary>
    public class LuaComponent : TQBaseComponent
    {
        private LuaManager m_LuaManager;
        /// <summary>
        /// 是否打印lua协议日志
        /// </summary>
        public bool DebugLogProto = false;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_LuaManager = new LuaManager();
#if DEBUG_LOG_PROTO
            DebugLogProto = true;
#endif
        }
        public void Init()
        {
            m_LuaManager.Init();
        }

        protected override void OnStart()
        {
            base.OnStart();
            LoadDataTableMS = new MMO_MemoryStream();
          
        }
        /// <summary>
        /// 加载数据表的ms
        /// </summary>
        public MMO_MemoryStream LoadDataTableMS
        {
            get;
            private set;
        }

        /// <summary>
        /// 加载数据表
        /// </summary>
        /// <param name="tableName"></param>
        public void LoadDataTable(string tableName, BaseAction<MMO_MemoryStream> onComplete)
        {
            GameEntry.DataTable.DataTableManager.GetDataTableBunffer(tableName, (byte[] buffer) =>
             {
                 LoadDataTableMS.SetLength(0);
                 LoadDataTableMS.Write(buffer, 0, buffer.Length);
                 LoadDataTableMS.Position = 0;
                 if (onComplete != null)
                 {
                     //Debug.Log(LoadDataTableMS.ReadInt());
                     onComplete(LoadDataTableMS);
                 }
                 //using (MMO_MemoryStream LoadDataTableMS = new MMO_MemoryStream(buffer))
                 //{
                 //    //LoadDataTableMS.SetLength(0);
                 //    //LoadDataTableMS.Write(buffer, 0, buffer.Length);
                 //    //LoadDataTableMS.Position = 0;
                 //    if (onComplete != null)
                 //    {
                 //        Debug.Log(LoadDataTableMS.ReadInt());
                 //        onComplete(LoadDataTableMS);
                 //    }
                 //}
             });
        }

        /// <summary>
        /// 在lua中加载MMO_MemoryStream（普通协议使用）
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public MMO_MemoryStream LoadSocketReceiveMS(byte[] buffer)
        {
            MMO_MemoryStream ms = new MMO_MemoryStream();
            ms.SetLength(0);
            ms.Write(buffer, 0, buffer.Length);
            ms.Position = 0;
            return ms;
        }

        /// <summary>
        /// 取池MemoryStream
        /// </summary>
        /// <returns></returns>
        public MMO_MemoryStream DequeueMemoryStream()
        {
            return GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
        }
        /// <summary>
        /// 取池MemoryStream并载入buffer（子协议）
        /// </summary>
        /// <param name="buffer"></param>
        /// <returns></returns>
        public MMO_MemoryStream DequeueMemoryStreamAndLoadBuffer(byte[] buffer)
        {
            MMO_MemoryStream ms = GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
            ms.SetLength(0);
            ms.Write(buffer, 0, buffer.Length);
            ms.Position = 0;
            return ms;
        }

        /// <summary>
        /// 回池MMO_MemoryStream
        /// </summary>
        /// <param name="ms"></param>
        public void EnqueueMemoryStream(MMO_MemoryStream ms)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }

        /// <summary>
        /// 从ms获取指定的字节数据
        /// </summary>
        /// <param name="ms"></param>
        /// <param name="len"></param>
        /// <returns></returns>
        public byte[] GetByteArray(MMO_MemoryStream ms,int len)
        {
            byte[] buffer = new byte[len];
            ms.Read(buffer, 0, len);
            return buffer;
        }

        
        public override void Shutdown()
        {
            LoadDataTableMS.Dispose();
            LoadDataTableMS.Close();
        }

     
    }
}

