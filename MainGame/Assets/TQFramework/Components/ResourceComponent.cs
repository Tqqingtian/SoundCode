using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// 资源组件
    /// </summary>
    public class ResourceComponent : TQBaseComponent,IUpdateComponent
    {
        /// <summary>
        /// 本地文件路径
        /// </summary>
        public string LocalFilePath;
        
        /// <summary>
        /// 资源管理器
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
        /// 初始化只读取资源信息
        /// </summary>
        public void InitStreamingAssetsBundleInfo()
        {
            Debug.Log("初始化只读取资源信息");
            ResourceManager.InitStreamingAssetsBundleInfo();
        }
        /// <summary>
        /// 初始化资源信息
        /// </summary>
        public void InitAssetInfo()
        {
            ResourceLoaderManager.InitAssetInfo();
        }

        
        /// <summary>
        /// 获取路径的最后名称
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
        /// 获取场景资源包路径
        /// </summary>
        /// <param name="sceneName"></param>
        /// <returns></returns>
        public string GetSceneAssetBundlePath(string sceneName)
        {
            return string.Format("download/scenes/{0}.assetbundle", sceneName.ToLower());
        }

    }
}

