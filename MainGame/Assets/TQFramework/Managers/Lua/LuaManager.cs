/********************************     
* 创建时间：2019-06-30 21:59:07   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using XLua;

namespace TQ
{
    public class LuaManager : ManagerBase
    {
        /// <summary>
        /// 全局的lua引擎
        /// </summary>
        public static LuaEnv luaEnv;
        

        /// <summary>
        /// 初始化
        /// </summary>
        public void Init()
        {
            //1.初始化 xlua引擎
            luaEnv = new LuaEnv();
            //Debug.LogError("初始化lua");
#if DISABLE_ASSETBUNDLE
            //2.设置xlua的脚本路径
            DoString(string.Format("package.path ='{0}/?.bytes'", Application.dataPath + "/Download/xLuaLogic/"));
            DoString("require 'Main'");
#else
            //1.添加自定义Loader
            luaEnv.AddLoader(MyLoader);
            //2.加载bundle
            LoadLuaAssetBundle();
#endif
        }

        /// <summary>
        /// 当前xlua脚本的资源包
        /// </summary>
        private AssetBundle m_CurrAssetBundle;

        /// <summary>
        /// 当前lua脚本的资源包
        /// </summary>
        private void LoadLuaAssetBundle()
        {
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle(ConstDefine.XLuaAssetBundlePath, onComplete: (AssetBundle bundle) =>
              {
                  m_CurrAssetBundle = bundle;
                  DoString("require 'Main'");
              });
        }

        /// <summary>
        /// 自定义的loader
        /// </summary>
        /// <param name="filepath"></param>
        /// <returns></returns>
        private byte[] MyLoader(ref string filepath)
        {
            string path = GameEntry.Resource.GetLastPathName(filepath);
            TextAsset asset = m_CurrAssetBundle.LoadAsset<TextAsset>(path);

            byte[] buffer = asset.bytes;

            if (buffer[0]==239&&buffer[1]==187&&buffer[2]==191)
            {
                //处于utf-8 bom头
                buffer[0] = buffer[1] = buffer[2] = 32;

            }
            return buffer;
        }
        /// <summary>
        /// 执行lua脚本
        /// </summary>
        public void DoString(string str)
        {
            luaEnv.DoString(str);
        }
    }
}

