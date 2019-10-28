using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// �������
    /// </summary>
    public class DownloadComponent : TQBaseComponent,IUpdateComponent
    {
        [Header("д����̵Ļ����С(�ֽ�)")]
        public int FlushSize = 1024 * 1024;

        [Header("����������")]
        public int DownloadRoutineCount = 5;

        /// <summary>
        /// ���ع�����
        /// </summary>
        private DownloadManager m_DownloadManager;
        
        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_DownloadManager = new DownloadManager();
        }
        /// <summary>
        /// �����ļ�
        /// </summary>
        /// <param name="url"></param>
        /// <param name="onUpdate"></param>
        /// <param name="onComplete"></param>
        public void BeginDownloadSingle(string url,BaseAction<string, ulong,float> onUpdate =null,BaseAction<string> onComplete = null)
        {
           
            m_DownloadManager.BeginDownloadSingle(url, onUpdate, onComplete);
        }
        /// <summary>
        /// ���ض���ļ�
        /// </summary>
        /// <param name="lstUrl"></param>
        /// <param name="onDownloadMulitUpdate"></param>
        /// <param name="onDownloadMulitComplete"></param>
        public void BeginDownloadMulit(LinkedList<string> lstUrl, BaseAction<int,int,ulong, ulong> onDownloadMulitUpdate = null, BaseAction onDownloadMulitComplete =null)
        {
            m_DownloadManager.BeginDownloadMulit(lstUrl, onDownloadMulitUpdate, onDownloadMulitComplete);
        }
        public void OnUpdate()
        {
            m_DownloadManager.OnUpdate();
        }


        public override void Shutdown()
        {
            GameEntry.RemoveUpdateComponent(this);
        }
    }
}

