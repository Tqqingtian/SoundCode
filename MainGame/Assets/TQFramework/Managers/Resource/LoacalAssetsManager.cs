/********************************     
* 创建时间：2019-07-06 01:21:02   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using LitJson;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 可写区资源管理器
    /// </summary>
    public class LocalAssetsManager
    {
        /// <summary>
        /// 本地版本文件路径
        /// </summary>
        public string LocalVersionFilePath
        {
            get
            {
                return string.Format("{0}/{1}", Application.persistentDataPath, ConstDefine.VersionFileName);
            }
        }

        #region GetVersionFileExists 获取可写区版本文件是否存在
        /// <summary>
        /// 获取可写区版本文件是否存在
        /// </summary>
        /// <returns></returns>
        public bool GetVersionFileExists()
        {
            return File.Exists(LocalVersionFilePath);
        }

        #endregion

        #region GetFileBuffer 读取本地文件字节数组
        /// <summary>
        /// 读取本地文件字节数组
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public byte[] GetFileBuffer(string path)
        {
            return IOUtil.GetFileBuffer(string.Format("{0}/{1}",Application.persistentDataPath,path));
        }

        public bool CheckeFileExists(string assetbundlePath)
        {
            if (File.Exists(assetbundlePath))
            {
                return true;
            }
            return false;
        }
        #endregion

        /// <summary>
        /// 获取本地化文件内存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public string GetString(string key, params object[] args)
        {
            string value = null;
            if (GameEntry.DataTable.DataTableManager.LocalizationDBModel.LocalizationDic.TryGetValue(key, out value))
            {
                return string.Format(value, args);
            }
            return value;
        }
        
        #region SetResourceVersion 保存版本号
        /// <summary>
        /// 保存版本号
        /// </summary>
        /// <param name="version"></param>
        public void SetResourceVersion(string version)
        {
            PlayerPrefs.SetString(ConstDefine.ResourceVersion, version);
        }
        #endregion

    
        #region SaveVersionFile 保存版本文件
        /// <summary>
        /// 保存版本文件
        /// </summary>
        /// <param name="dic"></param>
        public void SaveVersionFile(Dictionary<string, AssetBundleInfoEntity> dic)
        {

            string json = JsonMapper.ToJson(dic);
            IOUtil.CreateTextFile(LocalVersionFilePath, json);
        }


        #endregion

        #region GetAssetBundleVersionList 加载可写区资源包信息
        /// <summary>
        /// 加载可写区资源包信息
        /// </summary>
        /// <param name="m_LocalAssetsVersion"></param>
        /// <returns></returns>
        public Dictionary<string, AssetBundleInfoEntity> GetAssetBundleVersionList(ref string version)
        {
            version = PlayerPrefs.GetString(ConstDefine.ResourceVersion);

            string json = IOUtil.GetFileText(LocalVersionFilePath);
            return JsonMapper.ToObject<Dictionary<string, AssetBundleInfoEntity>>(json);
        }

        #endregion
    }

}
