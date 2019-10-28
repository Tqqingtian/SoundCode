using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class AssetBundleLoaderRoutine 
    {
        /// <summary>
        /// 当前的资源包信息
        /// </summary>
        private AssetBundleInfoEntity m_CurrAssetBundleInfo;

        /// <summary>
        /// 资源包创建进程
        /// </summary>
        private AssetBundleCreateRequest m_CurrAssetBundleCreateRequest;

        /// <summary>
        /// 资源包创建请求更新
        /// </summary>
        public Action<float> OnAssetBundleCreateUpate;

        /// <summary>
        /// 加载资源完毕
        /// </summary>
        public Action<AssetBundle> OnLoadAssetBundleComplete;

        #region LoadAssetBundle 加载资源包
        /// <summary>
        /// 加载资源包
        /// </summary>
        /// <param name="assetbundlePath"></param>
        public void LoadAssetBundle(string assetbundlePath)
        {
            //获取资源包信息
            m_CurrAssetBundleInfo = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(assetbundlePath);

            //检查文件是否在可写区
            bool isExistsInLocal = GameEntry.Resource.ResourceManager.LocalAssetsManager.CheckeFileExists(assetbundlePath);

            if (isExistsInLocal&&!m_CurrAssetBundleInfo.IsEncrypt)
            {
                //如果资源包存在于可写区 并没有加加密
                m_CurrAssetBundleCreateRequest = AssetBundle.LoadFromFileAsync(string.Format("{0}/{1}", Application.persistentDataPath, assetbundlePath));
            }
            else
            {
                //先从资源目录加载
                byte[] buffer = GameEntry.Resource.ResourceManager.LocalAssetsManager.GetFileBuffer(assetbundlePath);
                if (buffer == null)
                {
                    //没有就到只读区
                    GameEntry.Resource.ResourceManager.StreamingAssetsManager.ReadAssetBundle(assetbundlePath, (byte[] buff) =>
                    {
                        if (buff == null)
                        {
                            //只读区没有 就到cdn下载
                            Debug.LogError("资源需要加载：" + assetbundlePath);
                            GameEntry.Download.BeginDownloadSingle(assetbundlePath, onComplete: (string fileUrl) =>
                              {
                                  Debug.LogError("下载完毕fileUrl："+fileUrl);
                                  buffer = GameEntry.Resource.ResourceManager.LocalAssetsManager.GetFileBuffer(fileUrl);
                                  Debug.LogError("准备加载资源：" + buffer);
                                  LoadAssetBundleAsync(buffer);
                              });
                        }
                        else
                        {
                            LoadAssetBundleAsync(buff);
                        }
                    });
                }
                else
                {
                    LoadAssetBundleAsync(buffer);
                }
            }
           
        }
        /// <summary>
        /// 异步加载资源包
        /// </summary>
        /// <param name="buff"></param>
        private void LoadAssetBundleAsync(byte[] buffer)
        {
            if (m_CurrAssetBundleInfo.IsEncrypt)
            {
                buffer = SecurityUtil.Xor(buffer);
            }
            
            m_CurrAssetBundleCreateRequest = AssetBundle.LoadFromMemoryAsync(buffer);
        }
        #endregion

        /// <summary>
        /// 重置
        /// </summary>
        public void Reset()
        {
            m_CurrAssetBundleCreateRequest = null;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public void OnUpdate()
        {
            UpdateAsssetBundleCreateRequest();
        }
        #region UpdateAsssetBundleCreateRequest 更新资源包请求
        /// <summary>
        /// 更新资源包请求
        /// </summary>
        private void UpdateAsssetBundleCreateRequest()
        {
            if (m_CurrAssetBundleCreateRequest != null)
            {
                if (m_CurrAssetBundleCreateRequest.isDone)
                {
                    AssetBundle assetBundle = m_CurrAssetBundleCreateRequest.assetBundle;
                    if (assetBundle != null)
                    {
                        //GameEntry.Log(LogCategory.Resource, string.Format("资源包=》{0}加载完毕", m_CurrAssetBundleInfo.AssetBundleName));

                        Reset();
                        if (OnLoadAssetBundleComplete != null)
                        {
                            OnLoadAssetBundleComplete(assetBundle);
                        }
                    }
                    else
                    {
                        {
                            //GameEntry.Log(LogCategory.Resource, string.Format("资源包=》{0}加载失败", m_CurrAssetBundleInfo.AssetBundleName));

                            Reset();
                            if (OnLoadAssetBundleComplete != null)
                            {
                                OnLoadAssetBundleComplete(null);
                            }

                        }
                    }
                }
                else
                {
                    //加载进度
                    if (OnAssetBundleCreateUpate != null)
                    {
                        OnAssetBundleCreateUpate(m_CurrAssetBundleCreateRequest.progress);
                    }
                }

            }
            #endregion
        }
    }
}

