using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class DownloadManager : ManagerBase
    {
        /// <summary>
        /// ����������
        /// </summary>
        private LinkedList<DownloadRoutine> m_DownloadRoutineList;

        /// <summary>
        /// ��Ҫ���ص��ļ�����
        /// </summary>
        private LinkedList<string> m_NeedDownloadList;

        public DownloadManager()
        {
            m_DownloadRoutineList = new LinkedList<DownloadRoutine>();
            m_NeedDownloadList = new LinkedList<string>();
            m_DownloadMulitCurrSizeDic = new Dictionary<string, ulong>();
        }
        #region ���ص�һ�ļ�
        /// <summary>
        /// �����ļ�
        /// </summary>
        /// <param name="url"></param>
        /// <param name="onUpdate"></param>
        /// <param name="onComplete"></param>
        public void BeginDownloadSingle(string url, BaseAction<string,ulong ,float> onUpdate = null, BaseAction<string> onComplete = null)
        {
            AssetBundleInfoEntity entity = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(url);
            if (entity==null)
            {
                GameEntry.LogError("��Ч��Դ��=��" + url);
                return;
            }

            DownloadRoutine routine = GameEntry.Pool.DequeueClassObject<DownloadRoutine>();
            routine.BeginDownload(url,entity, onUpdate, onComplete: (string fileUrl,DownloadRoutine r) =>
               {
                   m_DownloadRoutineList.Remove(r);
                   GameEntry.Pool.EnqueueClassObject(routine);
                   if (onComplete != null)
                   {
                       onComplete(fileUrl);
                   }
               });
            m_DownloadRoutineList.AddLast(routine);
        }

        #endregion
        /// <summary>
        /// ����ļ������е�ί��
        /// </summary>
        private BaseAction<int, int, ulong, ulong> m_OnDownloadMulitUpdate;

        /// <summary>
        /// ����ļ��������ί��
        /// </summary>
        private BaseAction m_OnDownloadMulitComplete;

        /// <summary>
        /// ����ļ�������Ҫ���ص�����
        /// </summary>
        private int m_DownloadMulitNeedCount = 0;

        /// <summary>
        /// ����ļ����ص�ǰ���ص�����
        /// </summary>
        private int m_DownloadMulitCurrCount = 0;

        /// <summary>
        /// ���ļ������ܴ�С(�ֽ�)
        /// </summary>
        private ulong m_DownloadMulitTotalSize = 0;

        private ulong m_DownloadMulitCurrSize = 0;

        /// <summary>
        /// ����ļ����ص�ǰ��С
        /// </summary>
        private Dictionary<string, ulong> m_DownloadMulitCurrSizeDic;

        /// <summary>
        /// ���ض���ļ�
        /// </summary>
        /// <param name="lstUrl"></param>
        /// <param name="onDownloadMulitUpdate"></param>
        /// <param name="onDownloadMulitComplete"></param>
        public void BeginDownloadMulit(LinkedList<string> lstUrl, BaseAction<int, int, ulong, ulong> onDownloadMulitUpdate, BaseAction onDownloadMulitComplete)
        {
            m_OnDownloadMulitUpdate = onDownloadMulitUpdate;
            m_OnDownloadMulitComplete = onDownloadMulitComplete;
            
            m_NeedDownloadList.Clear();
            m_DownloadMulitCurrSizeDic.Clear();

            m_DownloadMulitNeedCount = 0;
            m_DownloadMulitCurrCount = 0;

            m_DownloadMulitTotalSize = 0;
            m_DownloadMulitCurrSize = 0;

            //m_DownloadMulitNeedCount = lstUrl.Count;
            //m_DownloadMulitCurrCount = 0;

            //1.����Ҫ���صļ��������б�
            for (LinkedListNode<string> item=lstUrl.First;item!=null; item=item.Next)
            {
                string url = item.Value;
                Debug.Log("Ҫ���ص���Դ" + url);
                AssetBundleInfoEntity entity = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(url);
                if (entity!=null)
                {
                    m_DownloadMulitTotalSize += entity.Size;
                    m_DownloadMulitNeedCount++;
                    m_NeedDownloadList.AddLast(url);
                    m_DownloadMulitCurrSizeDic[url] = 0;

                }
                else
                {
                    GameEntry.LogError("��Ч��Դ��=��" + url);
                }
            }
            //2.���������� ������
            int routineCount = Mathf.Min(GameEntry.Download.DownloadRoutineCount, m_NeedDownloadList.Count);
            for (int i = 0; i < routineCount; i++)
            {
                DownloadRoutine routine = GameEntry.Pool.DequeueClassObject<DownloadRoutine>();

                string url = m_NeedDownloadList.First.Value;
                m_NeedDownloadList.RemoveFirst();

                AssetBundleInfoEntity entity = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(url);

                routine.BeginDownload(url, entity, OnDownloadMulitUpdate, OnDownloadMulitComplete);
                m_DownloadRoutineList.AddLast(routine);

            }
        }
        /// <summary>
        /// ���ض��ļ��ص�
        /// </summary>
        /// <param name="currDownloadedSize"></param>
        /// <param name="progress"></param>
        private void OnDownloadMulitUpdate(string url, ulong currDownloadedSize, float progress)
        {
            m_DownloadMulitCurrSizeDic[url] = currDownloadedSize;

            ulong currSize = 0;
            var enumerator = m_DownloadMulitCurrSizeDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                currSize += enumerator.Current.Value;
            }
            m_DownloadMulitCurrSize = currSize;
            if (m_DownloadMulitCurrSize > m_DownloadMulitTotalSize)
            {
                m_DownloadMulitCurrSize = m_DownloadMulitTotalSize;
            }
            if (m_OnDownloadMulitUpdate!=null)
            {
                m_OnDownloadMulitUpdate(m_DownloadMulitCurrCount, m_DownloadMulitNeedCount, m_DownloadMulitCurrSize, m_DownloadMulitTotalSize);
            }
        }
        /// <summary>
        /// ���ļ�������ϻص�
        /// </summary>
        /// <param name="fileUrl"></param>
        /// <param name="routine"></param>
        private void OnDownloadMulitComplete(string fileUrl,DownloadRoutine routine)
        {
            Debug.LogError("�������=" + fileUrl);
            //���������Ƿ���Ҫ���ص�����
            if (m_NeedDownloadList.Count >0)
            {
                //����������������
                string url = m_NeedDownloadList.First.Value;
                m_NeedDownloadList.RemoveFirst();
                AssetBundleInfoEntity entity = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(url);

                routine.BeginDownload(url, entity, OnDownloadMulitUpdate, OnDownloadMulitComplete);
            }
            else
            {
                m_DownloadRoutineList.Remove(routine);
                Debug.LogError("�������س�");
                GameEntry.Pool.EnqueueClassObject(routine);
            }
            m_DownloadMulitCurrCount++;

            if (m_OnDownloadMulitUpdate!=null)
            {
                m_OnDownloadMulitUpdate(m_DownloadMulitCurrCount, m_DownloadMulitNeedCount, m_DownloadMulitCurrSize, m_DownloadMulitTotalSize);
            }



            if (m_DownloadMulitCurrCount == m_DownloadMulitNeedCount)
            {
                Debug.LogError("��Դ�������");
                m_DownloadMulitCurrSize = m_DownloadMulitTotalSize;

                if (m_OnDownloadMulitUpdate != null)
                {
                    m_OnDownloadMulitUpdate(m_DownloadMulitCurrCount, m_DownloadMulitNeedCount, m_DownloadMulitCurrSize, m_DownloadMulitTotalSize);
                }

                if (m_OnDownloadMulitComplete!=null)
                {
                    m_OnDownloadMulitComplete();
                }

            }
        }

    
        /// <summary>
        /// ����
        /// </summary>
        public void OnUpdate()
        {
            var curr = m_DownloadRoutineList.First;
            while (curr!=null)
            {
                curr.Value.OnUpdate();
                curr = curr.Next;
            }
        }
    }
}

