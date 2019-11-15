using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

namespace TQ
{
    /// <summary>
    /// ��ɫ�����������н�ɫ��Ҫ�̳���������
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
        /// ��ʼ����ɫ��Ϣ
        /// </summary>
        public void OnInit()
        {
            luaEnv = LuaManager.luaEnv; //�˴�Ҫ��LuaManager�ϻ�ȡ ȫ��ֻ��һ��
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

