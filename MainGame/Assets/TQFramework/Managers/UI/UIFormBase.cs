/********************************     
* 创建时间：2019-06-27 00:45:47   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class UIFormBase : MonoBehaviour
    {
        /// <summary>
        /// ui窗体编号
        /// </summary>
        public int UIFormId
        {
            get;
            private set;
        }
        /// <summary>
        /// 分组编号
        /// </summary>
        public byte GroupId
        {
            get;
            private set;
        }
        /// <summary>
        /// 当前窗体
        /// </summary>
        public Canvas CurrCanvas
        {
            get;
            private set;
        }
        /// <summary>
        /// 关闭时间
        /// </summary>
        public float CloseTime
        {
            get;
            private set;
        }
        /// <summary>
        /// 禁用管理层
        /// </summary>
        public bool DisableUILayer
        {
            get;
            private set;
        }
        /// <summary>
        /// 是否锁定
        /// </summary>
        public bool IsLock
        {
            get;
            private set;
        }
        /// <summary>
        /// 用户数据
        /// </summary>
        public object UserData
        {
            get;
            private set;
        }

        private void Awake()
        {
            CurrCanvas = GetComponent<Canvas>();
        }
        internal void Init(int uiFormId,byte groupId, bool disableUILayer, bool isLock, object userData)
        {
            UIFormId = uiFormId;
            GroupId = groupId;
            DisableUILayer = disableUILayer;
            IsLock = isLock;
            UserData = userData;
        }

        private void Start()
        {
            OnInit(UserData);
            Open(UserData,true);
        }

        internal void Open(object userData,bool isFromInit = false)
        {
            if (!isFromInit)
            {
                UserData = userData;
            }
           
            if (!DisableUILayer)
            {
                //进行层级管理 增加层级管理
                GameEntry.UI.SetSortingOrder(this, true);
            }
            OnOpen(UserData);
        }
        //public void Close()
        //{
        //    GameEntry.UI.CloseUIForm(this);
        //}
        public void ToClose()
        {
            if (!DisableUILayer)
            {
                //进行层级管理 减少层级管理
                GameEntry.UI.SetSortingOrder(this, false);
            }
            OnClose();

            CloseTime = Time.time;
            GameEntry.UI.Enqueue(this);
        }
        private void OnDestroy()
        {
            OnBeforDestry();
        }
        protected virtual void OnInit(object userData) { }
        protected virtual void OnOpen(object userData) { }
        protected virtual void OnClose() { }
        protected virtual void OnBeforDestry() { }
    }
}

