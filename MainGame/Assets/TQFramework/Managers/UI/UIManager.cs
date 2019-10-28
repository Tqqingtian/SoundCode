using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    public class UIManager : ManagerBase
    {
        /// <summary>
        /// 已经打开的ui链表
        /// </summary>
        private LinkedList<UIFormBase> m_OpenUIFormList;

        private LinkedList<GameEntry> m_UIItemList;

        public UIManager()
        {
            m_OpenUIFormList = new LinkedList<UIFormBase>();
        }
        #region OpenUIForm 打开ui窗口
        /// <summary>
        /// 打开ui窗口
        /// </summary>
        /// <param name="uiFormID">UI的对应id</param>
        /// <param name="userData">要传的数据</param>
        /// <param name="onOpen">回调</param>
        internal void OpenUIForm(int uiFormID,object userData=null, BaseAction<UIFormBase> onOpen = null)
        {
            if (IsExists(uiFormID))
            {
                return;
            }
            //1.读表
            Sys_UIFormEntity entity = GameEntry.DataTable.DataTableManager.Sys_UIFormDBModel.Get(uiFormID);
            if (entity==null)
            {
                Debug.Log(uiFormID + "对应的UI窗体不存在");
                return;
            }

            UIFormBase formBase = GameEntry.UI.Dequeue(uiFormID);
            if (formBase==null)
            {
                //TODO:异步加载ui需要时间 此处需要处理过滤加载中的ui

                string assetPath = null;
                switch (GameEntry.Localization.CurrLanguage)
                {
                    case TQLanguage.Chinese:
                        assetPath = entity.AssetPath_Chinese;
                        break;
                    case TQLanguage.English:
                        assetPath = entity.AssetPath_English;
                        break;
                }
                LoadUIAsset(assetPath, (ResourceEntity resourceEntity) =>
                 {
                     GameObject uiObj = UnityEngine.Object.Instantiate((UnityEngine.Object)resourceEntity.Target) as GameObject;
                     //把克隆出来的资源 加入实例资源池
                     GameEntry.Pool.RegisterInstanceResource(uiObj.GetInstanceID(), resourceEntity);
                     uiObj.transform.SetParent(GameEntry.UI.GetGroup(entity.UIGroupId).Group);
                     uiObj.transform.localPosition = Vector3.zero;
                     uiObj.transform.localScale = Vector3.one;

                     formBase = uiObj.GetComponent<UIFormBase>();

                     formBase.Init(uiFormID, entity.UIGroupId, entity.DisableUILayer == 1, entity.IsLock == 1, userData);

                     m_OpenUIFormList.AddLast(formBase);
                     if (onOpen!=null)
                     {
                         onOpen(formBase);
                     }

                 });

            }
            else
            {
                formBase.gameObject.SetActive(true);
                formBase.Open(userData);
                m_OpenUIFormList.AddLast(formBase);
                if (onOpen != null)
                {
                    onOpen(formBase);
                }
            }
        }

        #endregion

        #region Item管理
        /// <summary>
        /// 打开UI的物件
        /// </summary>
        public ResourceEntity LoadUIItem(int uiItemID)
        {
            //读表
            Sys_UIItemEntity entity = GameEntry.DataTable.DataTableManager.Sys_UIItemDBModel.Get(uiItemID);
            string assetPath = null;
            switch (GameEntry.Localization.CurrLanguage)
            {
                case TQLanguage.Chinese:
                    assetPath = entity.AssetPath_Chinese;
                    break;
                case TQLanguage.English:
                    assetPath = entity.AssetPath_English;
                    break;
            }
            ResourceEntity ResEntity = null;
            LoadUIAsset(assetPath, (ResourceEntity resourceEntity) =>
            {

                //GameObject uiObj = UnityEngine.Object.Instantiate((UnityEngine.Object)resourceEntity.Target) as GameObject;
                //把克隆出来的资源 加入实例资源池
                //GameEntry.Pool.RegisterInstanceResource(uiObj.GetInstanceID(), resourceEntity);
                ResEntity = resourceEntity;
            });
            return ResEntity;
            
        }
        /// <summary>
        /// 关闭UI
        /// </summary>
        public void CloseUIItem()
        {


        }


        #endregion

        #region LoadUIAsset 加载ui资源
        /// <summary>
        /// 加载ui资源
        /// </summary>
        /// <param name="assetPath"></param>
        /// <param name="onComplete"></param>
        private void LoadUIAsset(string assetPath, BaseAction<ResourceEntity> onComplete)
        {
#if DISABLE_ASSETBUNDLE && UNITY_EDITOR
            string path = string.Format("Assets/Download/UI/UIPrefab/{0}.prefab", assetPath);
            //加载镜像
            ResourceEntity resource = GameEntry.Pool.DequeueClassObject<ResourceEntity>();
            resource.Category = AssetCategory.UIPrefab;
            resource.IsAssetBundle = false;
            resource.ResourceName = path;
            resource.Target = UnityEditor.AssetDatabase.LoadAssetAtPath<GameObject>(path);
            if (onComplete!=null)
            {
                onComplete(resource);
            }
#else
            GameEntry.Resource.ResourceLoaderManager.LoadMainAsset(AssetCategory.UIPrefab, string.Format("Assets/Download/UI/UIPrefab/{0}.prefab", assetPath), (ResourceEntity resourceEntity) =>
               {
                   if (onComplete!=null)
                   {
                       onComplete(resourceEntity);
                   }
               });
#endif

        }
        #endregion IsExists 检查ui是否已经打开
        /// <summary>
        /// 检查ui是否已经打开
        /// </summary>
        /// <param name="uiformId"></param>
        /// <returns></returns>
        public bool IsExists(int uiformId)
        {
            for (LinkedListNode<UIFormBase> curr=m_OpenUIFormList.First; curr!=null;curr=curr.Next)
            {
                if (curr.Value.UIFormId==uiformId)
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 根据uiFormId关闭ui
        /// </summary>
        /// <param name="uiformId"></param>
        internal void CloseUIForm(int uiformId)
        {
            for (LinkedListNode<UIFormBase> curr = m_OpenUIFormList.First; curr != null; curr = curr.Next)
            {
                if (curr.Value.UIFormId == uiformId)
                {
                    CloseUIForm(curr.Value);
                    break;
                }
            }
        }
        /// <summary>
        /// 点击按钮关闭
        /// </summary>
        /// <param name="formBase"></param>
        internal void CloseUIForm(UIFormBase formBase)
        {

            m_OpenUIFormList.Remove(formBase);
            formBase.ToClose();
        }
    }
}

