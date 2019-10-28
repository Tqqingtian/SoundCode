using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// 资源管理器
    /// </summary>
    public class ResourceManager : ManagerBase, IDisposable
    {
        #region 根据字节数组获取资源包版本信息
        /// <summary>
        /// 根据字节数组获取资源包版本信息
        /// </summary>
        /// <param name="buffer">字节数组</param>
        /// <param name="version">版本号</param>
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
        /// StreamingAssets管理器
        /// </summary>
        public StreamingAssetsManager StreamingAssetsManager
        {
            get;
            private set;
        }
        /// <summary>
        /// 可写区资源管理器
        /// </summary>
        public LocalAssetsManager LocalAssetsManager
        {
            get;
            private set;
        }

        /// <summary>
        /// 需要下载的资源包列表
        /// </summary>
        private LinkedList<string> m_NeedDownloadList;

        /// <summary>
        /// 检查版本更新下载时候的参数
        /// </summary>
        private BaseParams m_DownloadingParams;


        public ResourceManager()
        {
            StreamingAssetsManager = new StreamingAssetsManager();
            LocalAssetsManager = new LocalAssetsManager();

            m_NeedDownloadList = new LinkedList<string>();
        }
        #region 只读区
        /// <summary>
        /// 只读区资源版本号
        /// </summary>
        private string m_StreamingAssetsVersion;
        /// <summary>
        /// 只读区资源包信息
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_StreamingAssetsVersionDic;

        /// <summary>
        /// 可写区版本文件是否存在
        /// </summary>
        private bool m_IsExistsStreamingAssetBundleInfo = false;

        #region InitStreamingAssetsBundleInfo 初始化只读区资源包信息
        /// <summary>
        /// 初始化只读区资源包信息
        /// </summary>
        public void InitStreamingAssetsBundleInfo()
        {
            GameEntry.Log(LogCategory.Resource, "InitStreamingAssetsBundleInfo");
            
            ReadStreamingAssetBundle("VersionFile.bytes", (byte[] buffer) =>
             {
               
                 if (buffer==null)
                 {
                     Debug.Log("只读区为空");
                     InitCDNAssetBundleInfo();
                 }
                 else
                 {
                     m_IsExistsStreamingAssetBundleInfo = true;
                     Debug.Log("获取只读区信息包"+ m_StreamingAssetsVersion);

                     m_StreamingAssetsVersionDic = GetAssetBundleVersionList(buffer, ref m_StreamingAssetsVersion);

                     InitCDNAssetBundleInfo();
                 }
               
             });
        }

        #endregion

        #region ReadStreamingAssetBundle 读取只读区的资源包
        /// <summary>
        /// 读取只读区的资源包
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
        /// CDN资源版本号
        /// </summary>
        private string m_CDNVersion;

        /// <summary>
        /// CDN资源版本号
        /// </summary>
        public string CDNVersion
        {
            get
            {
                return m_CDNVersion;
            }
        }

        /// <summary>
        /// CDN资源包信息
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_CDNVersionDic;

        private void InitCDNAssetBundleInfo()
        {
            string url = string.Format("{0}VersionFile.bytes", GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl);

            GameEntry.Log(LogCategory.Resource, url);
            GameEntry.Http.SendData(url, OnInitCDNAssetBundleInfo, isGetData: true);
        }
        /// <summary>
        /// 初始化CDN资源包信息回调
        /// </summary>
        /// <param name="args"></param>
        private void OnInitCDNAssetBundleInfo(HttpCallBackArgs args)
        {
            if (!args.HasError)
            {

                m_CDNVersionDic = GetAssetBundleVersionList(args.Data, ref m_CDNVersion);
                GameEntry.Log(LogCategory.Resource, "初始化cdn资源包信息OnInitCDNAssetBundleInfo");

                CheckVersionFileExistsInLocal();
            }
            else
            {
                GameEntry.Log(LogCategory.Resource, args.Value);
            }
        }

        #endregion

        #region 可写区

        /// <summary>
        /// 可写区资源版本文件
        /// </summary>
        private string m_LocalAssetsVersion;
        /// <summary>
        /// 可写区资源包信息
        /// </summary>
        private Dictionary<string, AssetBundleInfoEntity> m_LocalAssetsVersionDic;
 
        /// <summary>
        /// 检查可写区版本文件是否存在
        /// </summary>
        private void CheckVersionFileExistsInLocal()
        {
            GameEntry.Log(LogCategory.Resource, "CheckVersionFileExistsInLocal");
            if (LocalAssetsManager.GetVersionFileExists())
            {
                //可写区版本文件存在
                //加载可写区资源包信息
                InitLocalAssetsBundleInfo();
            }
            else
            {
               
                //可写区版本文件不存在
                //判断可写区版本文件是否存在
                if (m_IsExistsStreamingAssetBundleInfo)
                {
                    //只读取区版本文件存在
                    //将只读取区版本文件初始化到可写区
                    InitVersionFileStreamingAssetBundleToLocal();
                }
                CheckVersionChange();
            }
        }
        
        /// <summary>
        /// 将只读取区版本文件初始化到可写区
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

            //保存版本文件
            LocalAssetsManager.SaveVersionFile(m_LocalAssetsVersionDic);

            //保存版本号
            m_LocalAssetsVersion = m_StreamingAssetsVersion;
            LocalAssetsManager.SetResourceVersion(m_LocalAssetsVersion);
        }
        /// <summary>
        /// 初始化可写区资源包
        /// </summary>
        private void InitLocalAssetsBundleInfo()
        {
            m_LocalAssetsVersionDic = LocalAssetsManager.GetAssetBundleVersionList(ref m_LocalAssetsVersion);

            CheckVersionChange();
        }

        /// <summary>
        /// 保存版本信息
        /// </summary>
        /// <param name="entity"></param>
        public void SaveVersion(AssetBundleInfoEntity entity)
        {
            if (m_LocalAssetsVersionDic ==null)
            {
                m_LocalAssetsVersionDic = new Dictionary<string, AssetBundleInfoEntity>();
            }
            m_LocalAssetsVersionDic[entity.AssetBundleName] = entity;

            //保存版本文件
            LocalAssetsManager.SaveVersionFile(m_LocalAssetsVersionDic);
        }
        /// <summary>
        /// 保存资源版本号（用于检查版本更新后 保存）
        /// </summary>
        public void SetResourseVersion()
        {
            m_LocalAssetsVersion = m_CDNVersion;
            LocalAssetsManager.SetResourceVersion(m_LocalAssetsVersion);
        }

        /// <summary>
        /// 检查更新
        /// </summary>
        private void CheckVersionChange()
        {
            GameEntry.Log(LogCategory.Resource, "CheckVersionChange");
            if (LocalAssetsManager.GetVersionFileExists())
            {
                //判断只读区资源版本号和cdn资源版本号是否一致
                if (!string.IsNullOrEmpty(m_LocalAssetsVersion) && m_LocalAssetsVersion.Equals(m_CDNVersion))
                {
                    GameEntry.Log(LogCategory.Resource, "只读区资源版本号和cdn资源版本号一致");
                    //一致进入预加载流程
                    GameEntry.Procedure.ChangeState(ProcedureState.Preload);
                }
                else
                {
                    GameEntry.Log(LogCategory.Resource, "只读区资源版本号和cdn资源版本号不一致");
                    //TODO: 不一致 开始检查更新
                    BeginCheckVersionChange();
                    //最后进入到预加载流程
                }
            }
            else
            {
                //TODO: 下载初始资源
                GameEntry.Log(LogCategory.Resource, "下载初始资源");
                DownloadInitResourse();

            }

        }
        
        /// <summary>
        /// 下载初始化资源
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
        /// 开始检查版本更新
        /// </summary>
        private void BeginCheckVersionChange()
        {
            m_DownloadingParams = GameEntry.Pool.DequeueClassObject<BaseParams>();
            m_DownloadingParams.Reset();

            //需要删除的文件
            LinkedList<string> delList = new LinkedList<string>();

            //可写区资源md5和cdn资源md5不一致
            LinkedList<string> inconformtyList = new LinkedList<string>();

            LinkedList<string> needDownloadList = new LinkedList<string>();

            #region 找出需要删除的文件 删除
            var enumerator = m_LocalAssetsVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                string assetBundleName = enumerator.Current.Key;

                //去cdn对比
                AssetBundleInfoEntity cdnAssetBundleInfo = null;
                if (m_CDNVersionDic.TryGetValue(assetBundleName, out cdnAssetBundleInfo))
                {
                    //可写区有 cdn也有
                    if (!cdnAssetBundleInfo.MD5.Equals(enumerator.Current.Value.MD5, StringComparison.CurrentCultureIgnoreCase))
                    {
                        //如果md5不一致 加入不一致列表
                        inconformtyList.AddLast(assetBundleName);
                    }
                }
                else
                {
                    //可写区有 cdn上没有 加入删除列表
                    delList.AddLast(assetBundleName);
                }
            }
            //循环判断这个文件在只读区的md5和cdn是否一致 一致的进行删除 不一致的进行重新下载
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
                    //如果只读区 没有
                    needDownloadList.AddLast(currInconformity.Value);
                }
                else
                {
                    //判断 是否一致
                    if (cdnAssetBundleInfo.MD5.Equals(streamingAssetAssetBundleInfo.MD5, StringComparison.CurrentCultureIgnoreCase))
                    {
                        //一致
                        delList.AddLast(currInconformity.Value);
                    }
                    else
                    {
                        //不一致
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

            #region 检查需要下载的

            enumerator = m_CDNVersionDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetBundleInfoEntity cdnAssetBundleInfo = enumerator.Current.Value;
                if (cdnAssetBundleInfo.IsFirstData)
                {
                    //检查初始资源
                    if (!m_LocalAssetsVersionDic.ContainsKey(cdnAssetBundleInfo.AssetBundleName))
                    {
                        //如果可写区没有 就去只读区判断一次
                        AssetBundleInfoEntity streamingAssetsAssetBundleInfo = null;
                        if (m_StreamingAssetsVersionDic != null)
                        {
                            m_StreamingAssetsVersionDic.TryGetValue(cdnAssetBundleInfo.AssetBundleName, out streamingAssetsAssetBundleInfo);
                        }
                        if (streamingAssetsAssetBundleInfo == null)
                        {
                            //只读区 不存在
                            needDownloadList.AddLast(cdnAssetBundleInfo.AssetBundleName);
                        }
                        else
                        {
                            //只读区存在 验证md5
                            if (!cdnAssetBundleInfo.MD5.Equals(streamingAssetsAssetBundleInfo.MD5, StringComparison.CurrentCultureIgnoreCase))
                            {
                                //md5不一致
                                needDownloadList.AddLast(cdnAssetBundleInfo.AssetBundleName);
                            }
                        }
                    }
                }
            }

            #endregion
            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CheckVersionBeginDownload);

            //进行下载
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

            //进入预加载流程
            GameEntry.Procedure.ChangeState(ProcedureState.Preload);
        }
        #endregion
        /// <summary>
        /// 获取资源包信息 这个方法一定要能返回资源信息
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
                Debug.Log("m_StreamingAssetsVersionDic是空的");
            }
            else
            {
                m_StreamingAssetsVersionDic.Clear();
            }
           

        }

    }
}
