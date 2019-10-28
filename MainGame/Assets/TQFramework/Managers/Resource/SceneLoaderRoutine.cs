using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace TQ
{
    /// <summary>
    /// 场景加载和卸载器
    /// </summary>
    public class SceneLoaderRoutine
    {
        private AsyncOperation m_CurrAsync = null;

        /// <summary>
        /// 进度更新
        /// </summary>
        private BaseAction<int, float> OnProgressUpdate;

        /// <summary>
        /// 加载场景完毕
        /// </summary>
        private BaseAction<SceneLoaderRoutine> OnLoadSceneComplete;

        /// <summary>
        /// 卸载场景
        /// </summary>
        private BaseAction<SceneLoaderRoutine> OnUnLoadSceneComplete;

        /// <summary>
        /// 场景明细编号
        /// </summary>
        private int m_SceneDetailId;

        /// <summary>
        /// 加载场景
        /// </summary>
        /// <param name="sceneDatilId"></param>
        /// <param name="sceneName"></param>
        /// <param name="onProgressUpdate"></param>
        /// <param name="onLoadSceneComplete"></param>
        public void LoadScene(int sceneDatilId, string sceneName, BaseAction<int, float> onProgressUpdate, BaseAction<SceneLoaderRoutine> onLoadSceneComplete)
        {
            Reset();

            m_SceneDetailId = sceneDatilId;
            OnProgressUpdate = onProgressUpdate;
            OnLoadSceneComplete = onLoadSceneComplete;
#if DISABLE_ASSETBUNDLE

            m_CurrAsync = SceneManager.LoadSceneAsync(sceneName,LoadSceneMode.Additive);
            m_CurrAsync.allowSceneActivation = false;
            if (m_CurrAsync == null)
            {
                if (OnLoadSceneComplete !=null)
                {
                    OnLoadSceneComplete(this);
                }
            }

#else
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle(GameEntry.Resource.GetSceneAssetBundlePath(sceneName), onComplete: (AssetBundle bundle2) =>
            {
                //加载场景资源包
                m_CurrAsync = SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Additive);
                if (m_CurrAsync == null)
                {
                    if (OnLoadSceneComplete != null)
                    {
                        Debug.Log("加载资源包完成！");
                        OnLoadSceneComplete(this);
                    }
                }
            });
#endif
        }

        public void UnLoadScene(string sceneName,BaseAction<SceneLoaderRoutine> onUnLoadSceneComplete)
        {
            Reset();
            OnUnLoadSceneComplete = onUnLoadSceneComplete;
            m_CurrAsync = SceneManager.UnloadSceneAsync(sceneName);
            if (m_CurrAsync==null)
            {
                if (OnUnLoadSceneComplete != null)
                {
                    OnUnLoadSceneComplete(this);
                }
            }
        }

        private void Reset()
        {
            m_CurrAsync = null;
            OnProgressUpdate = null;
            OnLoadSceneComplete = null;
            OnUnLoadSceneComplete = null;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public void OnUpdate()
        {
            if (m_CurrAsync==null)
            {
                return;
            }
            if (!m_CurrAsync.isDone)
            {
                if (m_CurrAsync.progress>=0.9f)
                {
                    if (OnProgressUpdate!=null)
                    {
                        OnProgressUpdate(m_SceneDetailId, m_CurrAsync.progress);
                    }
                    m_CurrAsync.allowSceneActivation = true;
                    m_CurrAsync = null;
                    if (OnLoadSceneComplete!=null)
                    {
                        OnLoadSceneComplete(this);
                    }
                }
                else
                {
                    if (OnProgressUpdate!=null)
                    {
                        OnProgressUpdate(m_SceneDetailId, m_CurrAsync.progress);
                    }
                }
            }
            else
            {
                m_CurrAsync = null;
                if (OnUnLoadSceneComplete!=null)
                {
                    OnUnLoadSceneComplete(this);
                }
            }
        }

    }
}

