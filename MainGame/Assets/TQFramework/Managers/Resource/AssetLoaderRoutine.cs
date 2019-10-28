using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ��Դ������
    /// </summary>
    public class AssetLoaderRoutine
    {
        /// <summary>
        /// ��Դ��������
        /// </summary>
        private AssetBundleRequest m_CurrAssetBundleRequest;

        /// <summary>
        /// ��Դ�������
        /// </summary>
        public Action<float> OnAssetUpdate;

        /// <summary>
        /// ��Դ�������
        /// </summary>
        public Action<UnityEngine.Object> OnLoadAssetComplete;

        /// <summary>
        /// �첽������Դ
        /// </summary>
        /// <param name="assetName"></param>
        /// <param name="assetBundle"></param>
        public void LoadAsset(string assetName, AssetBundle assetBundle)
        {
            m_CurrAssetBundleRequest = assetBundle.LoadAssetAsync(assetName);
        }

        /// <summary>
        /// ����
        /// </summary>
        public void Reset()
        {
            m_CurrAssetBundleRequest = null;
        }

        /// <summary>
        /// ����
        /// </summary>
        public void OnUpdate()
        {
            UpdateAssetBundleRequest();
        }

        /// <summary>
        /// ���¼�����Դ����
        /// </summary>
        private void UpdateAssetBundleRequest()
        {
            if (m_CurrAssetBundleRequest != null)
            {
                if (m_CurrAssetBundleRequest.isDone)
                {
                    UnityEngine.Object obj = m_CurrAssetBundleRequest.asset;
                    if (obj!=null)
                    {
                        //GameEntry.Log(LogCategory.Resource, "��Դ=��{0},�������", obj.name);
                        Reset();//һ��Ҫ���reset
                        if (OnLoadAssetComplete!=null)
                        {
                            OnLoadAssetComplete(obj);
                        }
                    }
                    else
                    {
                        //GameEntry.LogError("��Դ=��{0} ����ʧ��",obj.name);
                        Reset();
                        if (OnLoadAssetComplete!=null)
                        {
                            OnLoadAssetComplete(obj);
                        }
                    }
                }
                else
                {
                    //���ؽ���
                    if (OnAssetUpdate!=null)
                    {
                        OnAssetUpdate(m_CurrAssetBundleRequest.progress);
                    }
                }
            }
        }
    }
}

