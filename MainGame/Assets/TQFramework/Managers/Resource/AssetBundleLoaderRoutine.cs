using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class AssetBundleLoaderRoutine 
    {
        /// <summary>
        /// ��ǰ����Դ����Ϣ
        /// </summary>
        private AssetBundleInfoEntity m_CurrAssetBundleInfo;

        /// <summary>
        /// ��Դ����������
        /// </summary>
        private AssetBundleCreateRequest m_CurrAssetBundleCreateRequest;

        /// <summary>
        /// ��Դ�������������
        /// </summary>
        public Action<float> OnAssetBundleCreateUpate;

        /// <summary>
        /// ������Դ���
        /// </summary>
        public Action<AssetBundle> OnLoadAssetBundleComplete;

        #region LoadAssetBundle ������Դ��
        /// <summary>
        /// ������Դ��
        /// </summary>
        /// <param name="assetbundlePath"></param>
        public void LoadAssetBundle(string assetbundlePath)
        {
            //��ȡ��Դ����Ϣ
            m_CurrAssetBundleInfo = GameEntry.Resource.ResourceManager.GetAssetBundleInfo(assetbundlePath);

            //����ļ��Ƿ��ڿ�д��
            bool isExistsInLocal = GameEntry.Resource.ResourceManager.LocalAssetsManager.CheckeFileExists(assetbundlePath);

            if (isExistsInLocal&&!m_CurrAssetBundleInfo.IsEncrypt)
            {
                //�����Դ�������ڿ�д�� ��û�мӼ���
                m_CurrAssetBundleCreateRequest = AssetBundle.LoadFromFileAsync(string.Format("{0}/{1}", Application.persistentDataPath, assetbundlePath));
            }
            else
            {
                //�ȴ���ԴĿ¼����
                byte[] buffer = GameEntry.Resource.ResourceManager.LocalAssetsManager.GetFileBuffer(assetbundlePath);
                if (buffer == null)
                {
                    //û�о͵�ֻ����
                    GameEntry.Resource.ResourceManager.StreamingAssetsManager.ReadAssetBundle(assetbundlePath, (byte[] buff) =>
                    {
                        if (buff == null)
                        {
                            //ֻ����û�� �͵�cdn����
                            Debug.LogError("��Դ��Ҫ���أ�" + assetbundlePath);
                            GameEntry.Download.BeginDownloadSingle(assetbundlePath, onComplete: (string fileUrl) =>
                              {
                                  Debug.LogError("�������fileUrl��"+fileUrl);
                                  buffer = GameEntry.Resource.ResourceManager.LocalAssetsManager.GetFileBuffer(fileUrl);
                                  Debug.LogError("׼��������Դ��" + buffer);
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
        /// �첽������Դ��
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
        /// ����
        /// </summary>
        public void Reset()
        {
            m_CurrAssetBundleCreateRequest = null;
        }
        /// <summary>
        /// ����
        /// </summary>
        public void OnUpdate()
        {
            UpdateAsssetBundleCreateRequest();
        }
        #region UpdateAsssetBundleCreateRequest ������Դ������
        /// <summary>
        /// ������Դ������
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
                        //GameEntry.Log(LogCategory.Resource, string.Format("��Դ��=��{0}�������", m_CurrAssetBundleInfo.AssetBundleName));

                        Reset();
                        if (OnLoadAssetBundleComplete != null)
                        {
                            OnLoadAssetBundleComplete(assetBundle);
                        }
                    }
                    else
                    {
                        {
                            //GameEntry.Log(LogCategory.Resource, string.Format("��Դ��=��{0}����ʧ��", m_CurrAssetBundleInfo.AssetBundleName));

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
                    //���ؽ���
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

