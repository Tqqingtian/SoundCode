using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.Networking;
using System;

namespace TQ
{
    public class DownloadRoutine
    {
        /// <summary>
        /// web接收器
        /// </summary>
        private UnityWebRequest m_UnityWebRequest = null;

        /// <summary>
        /// 文件流
        /// </summary>
        private FileStream m_FileStream;

        /// <summary>
        /// 当前等待写入磁盘的大小
        /// </summary>
        private int m_CurrWaitFlushSize = 0;

        /// <summary>
        /// 上次写入的大小
        /// </summary>
        private int m_PrevWriteSize = 0;

        /// <summary>
        /// 文件总大小
        /// </summary>
        private ulong m_TotalSize;

        /// <summary>
        /// 当前下载的大小
        /// </summary>
        private ulong m_CurrDownloadeSize = 0;

        /// <summary>
        /// 起始位置
        /// </summary>
        private uint m_BeginPos = 0;

        /// <summary>
        /// 当前文件路径
        /// </summary>
        private string m_CurrFileUrl;

        /// <summary>
        /// 下载的本地路径
        /// </summary>
        private string m_DownloadLocalFilePath;

        /// <summary>
        /// 下载中委托
        /// </summary>
        private BaseAction<string, ulong, float> m_OnUpdate;

        /// <summary>
        /// 下载完毕委托
        /// </summary>
        private BaseAction<string, DownloadRoutine> m_OnComplete;

        private AssetBundleInfoEntity m_CurrAssetBundleInfo;

        public void BeginDownload(string url,AssetBundleInfoEntity assetBundleInfo, BaseAction<string, ulong, float> onUpadte = null, BaseAction<string,DownloadRoutine> onComplete = null)
        {
            m_CurrFileUrl = url;
            m_CurrAssetBundleInfo = assetBundleInfo;
            m_OnUpdate = onUpadte;
            m_OnComplete = onComplete;

            m_DownloadLocalFilePath = string.Format("{0}/{1}", GameEntry.Resource.LocalFilePath, m_CurrFileUrl);

            if (File.Exists(m_DownloadLocalFilePath))
            {
                File.Delete(m_DownloadLocalFilePath);
            }
            m_DownloadLocalFilePath = m_DownloadLocalFilePath + ".temp";
            
            if (File.Exists(m_DownloadLocalFilePath))
            {
                Debug.LogError("验证md5 避免版本更新时出现问题");
                if (PlayerPrefs.HasKey(m_DownloadLocalFilePath))
                {
                    //验证
                    if (!PlayerPrefs.GetString(m_CurrFileUrl).Equals(assetBundleInfo.MD5,System.StringComparison.CurrentCultureIgnoreCase))
                    {
                        Debug.LogError("如果不一致 就删除本地临时文件");
                        File.Delete(m_DownloadLocalFilePath);
                        BeginDownload();
                    }
                    else
                    {
                        Debug.LogError("一致 继续下载");
                        m_FileStream = File.OpenWrite(m_DownloadLocalFilePath);
                        m_FileStream.Seek(0, SeekOrigin.End);
                        m_BeginPos = (uint)m_FileStream.Length;
                        Download(string.Format("{0}{1}", GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl, m_CurrFileUrl), m_BeginPos);
                    }
                }
                else
                {
                    Debug.LogError("如果不一致 就删除本地临时文件");
                    File.Delete(m_DownloadLocalFilePath);
                    BeginDownload();
                }
            }
            else
            {
                Debug.LogError("本地没有md5记录 重新下载");
                BeginDownload();
            }
        }
        /// <summary>
        /// 进行下载
        /// </summary>
        private void BeginDownload()
        {
            Debug.LogError("下载资源"+ m_DownloadLocalFilePath);

            string directory = Path.GetDirectoryName(m_DownloadLocalFilePath);
            if (!Directory.Exists(directory))
            {
                Debug.Log("创建文件夹" + directory);
                Directory.CreateDirectory(directory);
            }

            m_FileStream = new FileStream(m_DownloadLocalFilePath, FileMode.Create, FileAccess.Write);
            PlayerPrefs.SetString(m_CurrFileUrl, m_CurrAssetBundleInfo.MD5);

            Download(string.Format("{0}{1}", GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl, m_CurrFileUrl));

        }



        /// <summary>
        /// 下载
        /// </summary>
        /// <param name="url"></param>
        private void Download(string url)
        {

            m_UnityWebRequest = UnityWebRequest.Get(url);
            m_UnityWebRequest.SendWebRequest();
        }
        /// <summary>
        /// 下载
        /// </summary>
        /// <param name="url"></param>
        /// <param name="beginPos">记录上次下载的位置</param>
        private void Download(string url, uint beginPos)
        {
            m_UnityWebRequest = UnityWebRequest.Get(url);
            m_UnityWebRequest.SetRequestHeader("Range", string.Format("bytes={0}-", beginPos.ToString()));
            m_UnityWebRequest.SendWebRequest();
        }

        public void Reset()
        {
            if (m_UnityWebRequest != null)
            {
                m_UnityWebRequest.Dispose();
                m_UnityWebRequest = null;
            }
            if (m_FileStream != null)
            {
                m_FileStream.Close();
                m_FileStream.Dispose();
                m_FileStream = null;
            }

            m_PrevWriteSize = 0;
            m_TotalSize = 0;
            m_CurrDownloadeSize = 0;
            m_CurrWaitFlushSize = 0;
        }

        public void OnUpdate()
        {
            if (m_UnityWebRequest == null)
            {
                return;
            }
            if (m_TotalSize == 0)
            {
                m_TotalSize = 0;
                ulong.TryParse(m_UnityWebRequest.GetResponseHeader("Content-Length"), out m_TotalSize);

            }
         

            if (!m_UnityWebRequest.isDone)
            {
                if (m_CurrDownloadeSize < m_UnityWebRequest.downloadedBytes)
                {
                    m_CurrDownloadeSize = m_UnityWebRequest.downloadedBytes;
                    Debug.LogError(string.Format("下载进度{0}%", (int)((m_CurrDownloadeSize / (float)m_TotalSize)*100)));

                    this.Sava(m_UnityWebRequest.downloadHandler.data);

                    if (m_OnUpdate != null)
                    {
                        m_OnUpdate(m_CurrFileUrl, m_CurrDownloadeSize, m_CurrDownloadeSize / (float)m_TotalSize);
                    }
                }
                return;
            }

            if (m_UnityWebRequest.error != null)
            {
                Debug.LogError("文件不存在：" + m_UnityWebRequest.error);
                Debug.Log(m_DownloadLocalFilePath);
                Reset();
            }

            if (m_UnityWebRequest.isNetworkError)
            {
                //下载失败
                Debug.LogError("下载失败");
                Reset();
            }
            else
            {
                m_CurrDownloadeSize = m_UnityWebRequest.downloadedBytes;
                this.Sava(m_UnityWebRequest.downloadHandler.data,true);
                if (m_OnUpdate!=null)
                {
                    m_OnUpdate(m_CurrFileUrl, m_CurrDownloadeSize, m_CurrDownloadeSize / (float)m_TotalSize);

                }
                Reset();
                //string newFile = m_DownloadLocalFilePath.Replace(".temp", "");
                ////删除原来的*
                //if (File.Exists(newFile))
                //{
                //    File.Delete(newFile);
                //}

                File.Move(m_DownloadLocalFilePath, m_DownloadLocalFilePath.Replace(".temp", ""));

                m_DownloadLocalFilePath = null;

                if (PlayerPrefs.HasKey(m_CurrFileUrl))
                {
                    PlayerPrefs.DeleteKey(m_CurrFileUrl);
                }

                //写入本地版本文件
                GameEntry.Resource.ResourceManager.SaveVersion(m_CurrAssetBundleInfo);

                if (m_OnComplete !=null)
                {
                    m_OnComplete(m_CurrFileUrl,this);

                }
                //m_CurrFileUrl = null;
                Debug.LogError("下载完毕");
            }
        }
        /// <summary>
        /// 保存字节
        /// </summary>
        /// <param name="buffer"></param>
        /// <param name="downloadComplete"></param>
        private void Sava(byte[] buffer, bool downloadComplete = true)
        {

            if (buffer ==null)
            {
                return;
            }
            int len = buffer.Length;
            int count = len - m_PrevWriteSize;
            m_FileStream.Write(buffer, m_PrevWriteSize, count);
            m_PrevWriteSize = len;

            m_CurrWaitFlushSize += count;
            if (m_CurrWaitFlushSize>=GameEntry.Download.FlushSize||downloadComplete)
            {
                Debug.LogError("写入磁盘");
                m_CurrWaitFlushSize = 0;
                m_FileStream.Flush();
            }
        }
    }
}

