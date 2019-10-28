using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// ��Դ������
    /// </summary>
    public class ResourceManager : ManagerBase, IDisposable
    {
        #region �����ֽ������ȡ��Դ���汾��Ϣ
        /// <summary>
        /// �����ֽ������ȡ��Դ���汾��Ϣ
        /// </summary>
        /// <param name="buffer">�ֽ�����</param>
        /// <param name="version">�汾��</param>
        /// <returns></returns>
        public static Dictionary<string, AssetBundleInfoEntity> GetAssetBundleVersionList(byte[] buffer, ref string version)
        {
           
            buffer = ZlibHelper.DeCompressBytes(buffer);


            Dictionary<string, AssetBundleInfoEntity> dic = new Dictionary<string, AssetBundleInfoEntity>();


            MMO_MemoryStream ms = new MMO_MemoryStream(buffer);

            int len = ms.ReadInt();
            for (int i = 0; i < len; i++)
            {
                if (i == 0)
                {
                    version = ms.ReadUTF8String().Trim();

                }
                else
                {
                    AssetBundleInfoEntity entity = new AssetBundleInfoEntity();
                    
                    entity.AssetBundleName = ms.ReadUTF8String();
                    entity.MD5 = ms.ReadUTF8String();
                    entity.Size = ms.ReadULong();
                    entity.IsFirstData = ms.ReadByte() == 1;
                    entity.IsEncrypt = ms.ReadByte() == 1;

                    dic[entity.AssetBundleName] = entity;
                }
            }
            return dic;
        }
        #endregion

        /// <summary>
        /// StreamingAssets������
        /// </summary>
        public StreamingAssetsManager StreamingAssetsManager
        {
            get;
            private set;
        }
        /// <summary>
        /// ��д����Դ������
        /// </summary>
        public LocalAssetsManager LocalAssetsManager
        {
            get;
            private set;
        }

        /// <summary>
        /// ��Ҫ���ص���Դ���б�
        /// </summary>
        private LinkedList<string> m_NeedDownloadList;

        /// <summary>
        /// ���汾��������ʱ��Ĳ���
        /// </summary>
        private BaseParams m_DownloadingParams;


        public ResourceManager()
        {
            StreamingAssetsManager = new StreamingAssetsManager();
            LocalAssetsManager = new LocalAssetsManager();

            m_NeedDownloadList = new LinkedList<string>();
        }
        #region ֻ����
        /// <summary>
        /// ֻ������Դ�汾��
        /// </summary>
        private string m_StreamingAssetsVersion;
        /// <summary>
        /// ֻ������Դ����Ϣ
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_StreamingAssetsVersionDic;

        /// <summary>
        /// ��д���汾�ļ��Ƿ����
        /// </summary>
        private bool m_IsExistsStreamingAssetBundleInfo = false;

        #region InitStreamingAssetsBundleInfo ��ʼ��ֻ������Դ����Ϣ
        /// <summary>
        /// ��ʼ��ֻ������Դ����Ϣ
        /// </summary>
        public void InitStreamingAssetsBundleInfo()
        {
            GameEntry.Log(LogCategory.Resource, "InitStreamingAssetsBundleInfo");
            
            ReadStreamingAssetBundle("VersionFile.bytes", (byte[] buffer) =>
             {
               
                 if (buffer==null)
                 {
                     Debug.Log("ֻ����Ϊ��");
                     InitCDNAssetBundleInfo();
                 }
                 else
                 {
                     m_IsExistsStreamingAssetBundleInfo = true;
                     Debug.Log("��ȡֻ������Ϣ��"+ m_StreamingAssetsVersion);

                     m_StreamingAssetsVersionDic = GetAssetBundleVersionList(buffer, ref m_StreamingAssetsVersion);

                     InitCDNAssetBundleInfo();
                 }
               
             });
        }

        #endregion

        #region ReadStreamingAssetBundle ��ȡֻ��������Դ��
        /// <summary>
        /// ��ȡֻ��������Դ��
        /// </summary>
        /// <param name="fileUrl"></param>
        /// <param name="onComplete"></param>
        internal void ReadStreamingAssetBundle(string fileUrl, Action<byte[]> onComplete)
        {

            StreamingAssetsManager.ReadAssetBundle(fileUrl, onComplete);


        }

        #endregion

        #endregion

        #region CDN
        /// <summary>
        /// CDN��Դ�汾��
        /// </summary>
        private string m_CDNVersion;

        /// <summary>
        /// CDN��Դ�汾��
        /// </summary>
        public string CDNVersion
        {
            get
            {
                return m_CDNVersion;
            }
        }

        /// <summary>
        /// CDN��Դ����Ϣ
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_CDNVersionDic;

        private void InitCDNAssetBundleInfo()
        {
            string url = string.Format("{0}VersionFile.bytes", GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl);

            GameEntry.Log(LogCategory.Resource, url);
            GameEntry.Http.SendData(url, OnInitCDNAssetBundleInfo, isGetData: true);
        }
        /// <summary>
        /// ��ʼ��CDN��Դ����Ϣ�ص�
        /// </summary>
        /// <param name="args"></param>
        private void OnInitCDNAssetBundleInfo(HttpCallBackArgs args)
        {
            if (!args.HasError)
            {

                m_CDNVersionDic = GetAssetBundleVersionList(args.Data, ref m_CDNVersion);
                GameEntry.Log(LogCategory.Resource, "��ʼ��cdn��Դ����ϢOnInitCDNAssetBundleInfo");

                CheckVersionFileExistsInLocal();
            }
            else
            {
                GameEntry.Log(LogCategory.Resource, args.Value);
            }
        }

        #endregion

        #region ��д��

        /// <summary>
        /// ��д����Դ�汾�ļ�
        /// </summary>
        private string m_LocalAssetsVersion;
        /// <summary>
        /// ��д����Դ����Ϣ
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_LocalAssetsVersionDic;
 
        /// <summary>
        /// ����д���汾�ļ��Ƿ����
        /// </summary>
        private void CheckVersionFileExistsInLocal()
        {
            GameEntry.Log(LogCategory.Resource, "CheckVersionFileExistsInLocal");
            if (LocalAssetsManager.GetVersionFileExists())
            {
                //��д���汾�ļ�����
                //���ؿ�д����Դ����Ϣ
                InitLocalAssetsBundleInfo();
            }
            else
            {
               
                //��д���汾�ļ�������
                //�жϿ�д���汾�ļ��Ƿ����
                if (m_IsExistsStreamingAssetBundleInfo)
                {
                    //ֻ��ȡ���汾�ļ�����
                    //��ֻ��ȡ���汾�ļ���ʼ������д��
                    InitVersionFileStreamingAssetBundleToLocal();
                }
                CheckVersionChange();
            }
        }
        
        /// <summary>
        /// ��ֻ��ȡ���汾�ļ���ʼ������д��
        /// </summary>
        private void InitVersionFileStreamingAssetBundleToLocal()
        {
            GameEntry.Log(LogCategory.Resource, "InitVersionFileStreamingAssetBundleToLocal");

            m_LocalAssetsVersionDic = new Dictionary<string, AssetBundleInfoEntity>();

            var enumerator = m_LocalAssetsVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetBundleInfoEntity entity = enumerator.Current.Value;
                m_LocalAssetsVersionDic[enumerator.Current.Key] = new AssetBundleInfoEntity()
                {
                    AssetBundleName = entity.AssetBundleName,
                    MD5 = entity.MD5,
                    Size = entity.Size,
                    IsFirstData = entity.IsFirstData,
                    IsEncrypt = entity.IsEncrypt
                };
            }

            //����汾�ļ�
            LocalAssetsManager.SaveVersionFile(m_LocalAssetsVersionDic);

            //����汾��
            m_LocalAssetsVersion = m_StreamingAssetsVersion;
            LocalAssetsManager.SetResourceVersion(m_LocalAssetsVersion);
        }
        /// <summary>
        /// ��ʼ����д����Դ��
        /// </summary>
        private void InitLocalAssetsBundleInfo()
        {
            m_LocalAssetsVersionDic = LocalAssetsManager.GetAssetBundleVersionList(ref m_LocalAssetsVersion);

            CheckVersionChange();
        }

        /// <summary>
        /// ����汾��Ϣ
        /// </summary>
        /// <param name="entity"></param>
        public void SaveVersion(AssetBundleInfoEntity entity)
        {
            if (m_LocalAssetsVersionDic ==null)
            {
                m_LocalAssetsVersionDic = new Dictionary<string, AssetBundleInfoEntity>();
            }
            m_LocalAssetsVersionDic[entity.AssetBundleName] = entity;

            //����汾�ļ�
            LocalAssetsManager.SaveVersionFile(m_LocalAssetsVersionDic);
        }
        /// <summary>
        /// ������Դ�汾�ţ����ڼ��汾���º� ���棩
        /// </summary>
        public void SetResourseVersion()
        {
            m_LocalAssetsVersion = m_CDNVersion;
            LocalAssetsManager.SetResourceVersion(m_LocalAssetsVersion);
        }

        /// <summary>
        /// ������
        /// </summary>
        private void CheckVersionChange()
        {
            GameEntry.Log(LogCategory.Resource, "CheckVersionChange");
            if (LocalAssetsManager.GetVersionFileExists())
            {
                //�ж�ֻ������Դ�汾�ź�cdn��Դ�汾���Ƿ�һ��
                if (!string.IsNullOrEmpty(m_LocalAssetsVersion) && m_LocalAssetsVersion.Equals(m_CDNVersion))
                {
                    GameEntry.Log(LogCategory.Resource, "ֻ������Դ�汾�ź�cdn��Դ�汾��һ��");
                    //һ�½���Ԥ��������
                    GameEntry.Procedure.ChangeState(ProcedureState.Preload);
                }
                else
                {
                    GameEntry.Log(LogCategory.Resource, "ֻ������Դ�汾�ź�cdn��Դ�汾�Ų�һ��");
                    //TODO: ��һ�� ��ʼ������
                    BeginCheckVersionChange();
                    //�����뵽Ԥ��������
                }
            }
            else
            {
                //TODO: ���س�ʼ��Դ
                GameEntry.Log(LogCategory.Resource, "���س�ʼ��Դ");
                DownloadInitResourse();

            }

        }
        
        /// <summary>
        /// ���س�ʼ����Դ
        /// </summary>
        private void DownloadInitResourse()
        {
            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CheckVersionBeginDownload);
            m_DownloadingParams = GameEntry.Pool.DequeueClassObject<BaseParams>();
            m_NeedDownloadList.Clear();

            var enumerator = m_CDNVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetBundleInfoEntity entity = enumerator.Current.Value;
                if (entity.IsFirstData)
                {
                    m_NeedDownloadList.AddLast(entity.AssetBundleName);
                }
            }
            GameEntry.Download.BeginDownloadMulit(m_NeedDownloadList, OnDownloadMulitUpdate, OnDownloadMulitComplete);
        }
        /// <summary>
        /// ��ʼ���汾����
        /// </summary>
        private void BeginCheckVersionChange()
        {
            m_DownloadingParams = GameEntry.Pool.DequeueClassObject<BaseParams>();
            m_DownloadingParams.Reset();

            //��Ҫɾ�����ļ�
            LinkedList<string> delList = new LinkedList<string>();

            //��д����Դmd5��cdn��Դmd5��һ��
            LinkedList<string> inconformtyList = new LinkedList<string>();

            LinkedList<string> needDownloadList = new LinkedList<string>();

            #region �ҳ���Ҫɾ�����ļ� ɾ��
            var enumerator = m_LocalAssetsVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                string assetBundleName = enumerator.Current.Key;

                //ȥcdn�Ա�
                AssetBundleInfoEntity cdnAssetBundleInfo = null;
                if (m_CDNVersionDic.TryGetValue(assetBundleName, out cdnAssetBundleInfo))
                {
                    //��д���� cdnҲ��
                    if (!cdnAssetBundleInfo.MD5.Equals(enumerator.Current.Value.MD5, StringComparison.CurrentCultureIgnoreCase))
                    {
                        //���md5��һ�� ���벻һ���б�
                        inconformtyList.AddLast(assetBundleName);
                    }
                }
                else
                {
                    //��д���� cdn��û�� ����ɾ���б�
                    delList.AddLast(assetBundleName);
                }
            }
            //ѭ���ж�����ļ���ֻ������md5��cdn�Ƿ�һ�� һ�µĽ���ɾ�� ��һ�µĽ�����������
            LinkedListNode<string> currInconformity = inconformtyList.First;
            while (currInconformity != null)
            {
                AssetBundleInfoEntity cdnAssetBundleInfo = null;
                m_CDNVersionDic.TryGetValue(currInconformity.Value, out cdnAssetBundleInfo);

                AssetBundleInfoEntity streamingAssetAssetBundleInfo = null;
                if (m_StreamingAssetsVersionDic != null)
                {
                    m_StreamingAssetsVersionDic.TryGetValue(currInconformity.Value, out streamingAssetAssetBundleInfo);
                }
                if (streamingAssetAssetBundleInfo == null)
                {
                    //���ֻ���� û��
                    needDownloadList.AddLast(currInconformity.Value);
                }
                else
                {
                    //�ж� �Ƿ�һ��
                    if (cdnAssetBundleInfo.MD5.Equals(streamingAssetAssetBundleInfo.MD5, StringComparison.CurrentCultureIgnoreCase))
                    {
                        //һ��
                        delList.AddLast(currInconformity.Value);
                    }
                    else
                    {
                        //��һ��
                        needDownloadList.AddLast(currInconformity.Value);
                    }

                }
                currInconformity = currInconformity.Next;
            }
            #endregion

            #region
            LinkedListNode<string> currDel = delList.First;
            while (currDel != null)
            {
                string filePath = string.Format("{0}/{1}", GameEntry.Resource.LocalFilePath, currDel.Value);

                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                }
                LinkedListNode<string> next = currDel.Next;
                delList.Remove(currDel);
                currDel = next;
            }

            #endregion

            #region �����Ҫ���ص�

            enumerator = m_CDNVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetBundleInfoEntity cdnAssetBundleInfo = enumerator.Current.Value;
                if (cdnAssetBundleInfo.IsFirstData)
                {
                    //����ʼ��Դ
                    if (!m_LocalAssetsVersionDic.ContainsKey(cdnAssetBundleInfo.AssetBundleName))
                    {
                        //�����д��û�� ��ȥֻ�����ж�һ��
                        AssetBundleInfoEntity streamingAssetsAssetBundleInfo = null;
                        if (m_StreamingAssetsVersionDic != null)
                        {
                            m_StreamingAssetsVersionDic.TryGetValue(cdnAssetBundleInfo.AssetBundleName, out streamingAssetsAssetBundleInfo);
                        }
                        if (streamingAssetsAssetBundleInfo == null)
                        {
                            //ֻ���� ������
                            needDownloadList.AddLast(cdnAssetBundleInfo.AssetBundleName);
                        }
                        else
                        {
                            //ֻ�������� ��֤md5
                            if (!cdnAssetBundleInfo.MD5.Equals(streamingAssetsAssetBundleInfo.MD5, StringComparison.CurrentCultureIgnoreCase))
                            {
                                //md5��һ��
                                needDownloadList.AddLast(cdnAssetBundleInfo.AssetBundleName);
                            }
                        }
                    }
                }
            }

            #endregion
            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CheckVersionBeginDownload);

            //��������
            GameEntry.Download.BeginDownloadMulit(needDownloadList, OnDownloadMulitUpdate, OnDownloadMulitComplete);
        }

        private void OnDownloadMulitUpdate(int t1, int t2, ulong t3, ulong t4)
        {
            m_DownloadingParams.IntParam1 = t1;
            m_DownloadingParams.IntParam2 = t2;

            m_DownloadingParams.ULongParams1 = t3;
            m_DownloadingParams.ULongParams2 = t4;

            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CheckVersionBeginDownloadUpdate, m_DownloadingParams);
        }
        private void OnDownloadMulitComplete()
        {
            this.SetResourseVersion();
            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CheckVersionBeginDownloadComplete);
            GameEntry.Pool.EnqueueClassObject(m_DownloadingParams);

            //����Ԥ��������
            GameEntry.Procedure.ChangeState(ProcedureState.Preload);
        }
        #endregion
        /// <summary>
        /// ��ȡ��Դ����Ϣ �������һ��Ҫ�ܷ�����Դ��Ϣ
        /// </summary>
        /// <param name="assetbundlePath"></param>
        /// <returns></returns>
        public AssetBundleInfoEntity GetAssetBundleInfo(string assetbundlePath)
        {
            AssetBundleInfoEntity entity = null;

            m_CDNVersionDic.TryGetValue(assetbundlePath, out entity);

            return entity;

        }
        public void Dispose()
        {

            if (m_StreamingAssetsVersionDic==null)
            {
                Debug.Log("m_StreamingAssetsVersionDic�ǿյ�");
            }
            else
            {
                m_StreamingAssetsVersionDic.Clear();
            }
           

        }

    }
}
