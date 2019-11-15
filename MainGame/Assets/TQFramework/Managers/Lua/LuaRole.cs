using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

namespace TQ
{
    /// <summary>
    /// 角色控制器（所有角色都要继承于这批）
    /// </summary>
    [LuaCallCSharp]
    public class LuaRole : MonoBehaviour
    {
        [CSharpCallLua]
        public delegate void OnInitHandler(Transform transform, object userData);
        OnInitHandler onInit;
        
        [CSharpCallLua]
        public delegate void OnUpdateHandler();
        OnUpdateHandler onUpdate;

        private LuaEnv luaEnv;

        private string prefabName;
        /// <summary>
        /// 初始化角色信息
        /// </summary>
        public void OnInit()
        {
            luaEnv = LuaManager.luaEnv; //此处要从LuaManager上获取 全局只有一个
            if (luaEnv == null) return;
            prefabName = name;
            if (prefabName.Contains("(Clone)"))
            {
                prefabName = prefabName.Split(new string[] { "(Clone)" }, StringSplitOptions.RemoveEmptyEntries)[0];
            }
            onInit = luaEnv.Global.GetInPath<OnInitHandler>(prefabName + ".onInit");

        }
    
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            onUpdate = luaEnv.Global.GetInPath<OnUpdateHandler>(prefabName + "onUpdate");
        }

        private void OnDestroy()
        {
            onInit = null;
            onUpdate = null;
        }
    }
}

