/********************************     
* 创建时间：2019-06-30 23:07:40   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using XLua;
namespace TQ
{
    /// <summary>
    /// Lua组件的类型
    /// </summary>
    public enum LuaConType
    {
        GameObject = 0,
        Transform = 1,
        Button = 2,
        Image = 3,
        TQImage = 4,
        Text = 5,
        TQText = 6,
        RawImage = 7,
        InputField = 8,
        Scrollbar = 9,
        ScrollRect = 10,
        MulityScroll = 11,
    }

    /// <summary>
    /// lua窗口form
    /// </summary>
    [LuaCallCSharp]
    public class LuaForm : UIFormBase
    {
        [CSharpCallLua]
        public delegate void OnInitHandler(Transform transform, object userData);
        OnInitHandler onInit;


        [CSharpCallLua]
        public delegate void OnOpenHandler(object userData);
        OnOpenHandler onOnpe;

        [CSharpCallLua]
        public delegate void OnCloseHandler();
        OnCloseHandler onClose;

        [CSharpCallLua]
        public delegate void OnBeforDestryHandler();
        OnBeforDestryHandler onBeforDestry;

        private LuaTable scriptEnv;

        private LuaEnv luaEnv;

        [Header("Lua组件")]
        [SerializeField]
        private LuaCom[] m_LuaComs;

        public LuaCom[] LuaComs
        {
            get { return m_LuaComs; }
            //private set;
        }

        /// <summary>
        /// 根据索引 查找组件
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public object GetLuaComs(int index)
        {
            LuaCom com = m_LuaComs[index];
            switch (com.Type)
            {
                case LuaConType.GameObject:
                    return com.Trans.gameObject;
                case LuaConType.Transform:
                    return com.Trans;
                case LuaConType.Button:
                    return com.Trans.GetComponent<Button>();
                case LuaConType.Image:
                    return com.Trans.GetComponent<Image>();
                case LuaConType.TQImage:
                    return com.Trans.GetComponent<TQImage>();
                case LuaConType.Text:
                    return com.Trans.GetComponent<Text>();
                case LuaConType.TQText:
                    return com.Trans.GetComponent<TQText>();
                case LuaConType.RawImage:
                    return com.Trans.GetComponent<RawImage>();
                case LuaConType.InputField:
                    return com.Trans.GetComponent<InputField>();
                case LuaConType.Scrollbar:
                    return com.Trans.GetComponent<Scrollbar>();
                case LuaConType.ScrollRect:
                    return com.Trans.GetComponent<ScrollRect>();
                case LuaConType.MulityScroll:
                    return com.Trans.GetComponent<UIMultiScroller>();
        
            }

            return com.Trans;
        }

        protected override void OnInit(object userData)
        {
            base.OnInit(userData);
            luaEnv = LuaManager.luaEnv; //此处要从LuaManager上获取 全局只有一个
            if (luaEnv == null) return;
            
            string prefabName = name;
            if (prefabName.Contains("(Clone)"))
            {
                prefabName = prefabName.Split(new string[] { "(Clone)" }, StringSplitOptions.RemoveEmptyEntries)[0] + "View";
            }
            //根据这个ui面板的名字监听 注意预制件上的名称要和lua脚本名称一致
            onInit = luaEnv.Global.GetInPath<OnInitHandler>(prefabName + ".OnInit");
            onOnpe = luaEnv.Global.GetInPath<OnOpenHandler>(prefabName + ".OnOpen");
            onClose = luaEnv.Global.GetInPath<OnCloseHandler>(prefabName + ".OnClose");
            onBeforDestry = luaEnv.Global.GetInPath<OnBeforDestryHandler>(prefabName + ".OnBeforDestry");
            
            if (onInit != null)
            {
                onInit(transform,userData);
            }
        }
        /// <summary>
        /// 监听打开
        /// </summary>
        /// <param name="userData"></param>
        protected override void OnOpen(object userData)
        {
            base.OnOpen(userData);

            if (onOnpe != null)
            {
                onOnpe(userData);
            }
        }


        protected override void OnClose()
        {
            base.OnClose();
            if (onClose != null)
            {
                onClose();
            }
        }

        protected override void OnBeforDestry()
        {
            base.OnBeforDestry();
            if (onBeforDestry != null)
            {
                onBeforDestry();
            }
            onInit = null;
            onOnpe = null;
            onClose = null;
            onBeforDestry = null;

            //卸载图片资源
            int len = m_LuaComs.Length;
            for (int i = 0; i < len; i++)
            {
                LuaCom com = m_LuaComs[i];
                com.Trans = null;
                com = null;
            }
        }

    }

    /// <summary>
    /// Lua组件
    /// </summary>
    [Serializable]
    public class LuaCom
    {
        /// <summary>
        /// 名称
        /// </summary>
        public string Name;

        /// <summary>
        /// 类型
        /// </summary>
        public LuaConType Type;

        /// <summary>
        /// 变换
        /// </summary>
        public Transform Trans;
    }
}
