using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// ��Դ���
    /// </summary>
    public class ResourceComponent : TQBaseComponent,IUpdateComponent
    {
        /// <summary>
        /// �����ļ�·��
        /// </summary>
        public string LocalFilePath;
        
        /// <summary>
        /// ��Դ������
        /// </summary>
        public ResourceManager ResourceManager
        {
            get;
            private set;
        }

        public ResourceLoaderManager ResourceLoaderManager
        {
            get;
            private set;

        }

        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);

            ResourceManager = new ResourceManager();
            ResourceLoaderManager = new ResourceLoaderManager();

#if DISABLE_ASSETBUNDLE
            LocalFilePath = Application.dataPath;
#else
            LocalFilePath = Application.persistentDataPath;
#endif
        }

        /// <summary>
        /// ��ʼ��ֻ��ȡ��Դ��Ϣ
        /// </summary>
        public void InitStreamingAssetsBundleInfo()
        {
            Debug.Log("��ʼ��ֻ��ȡ��Դ��Ϣ");
            ResourceManager.InitStreamingAssetsBundleInfo();
        }
        /// <summary>
        /// ��ʼ����Դ��Ϣ
        /// </summary>
        public void InitAssetInfo()
        {
            ResourceLoaderManager.InitAssetInfo();
        }

        
        /// <summary>
        /// ��ȡ·�����������
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public string GetLastPathName(string path)
        {
            if (path.IndexOf('/')==-1)
            {
                return path;
            }

            return path.Substring(path.LastIndexOf('/') + 1);
        }
        public override void Shutdown()
        {
            ResourceManager.Dispose();
            ResourceLoaderManager.Dispose();
        }

        public void OnUpdate()
        {
            ResourceLoaderManager.OnUpdate();
        }
        /// <summary>
        /// ��ȡ������Դ��·��
        /// </summary>
        /// <param name="sceneName"></param>
        /// <returns></returns>
        public string GetSceneAssetBundlePath(string sceneName)
        {
            return string.Format("download/scenes/{0}.assetbundle", sceneName.ToLower());
        }

    }
}

