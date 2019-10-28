using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 主资源加载器（主资源是相对的 是根据你想要加载的资源来判断）
    /// </summary>
    public class MainAssetLoaderRoutine
    {
        /// <summary>
        /// 当前的资源信息实体
        /// </summary>
        private AssetEntity m_CurrAssetEntity;

        /// <summary>
        /// 当前的资源实体
        /// </summary>
        private ResourceEntity m_CurrResourceEntity;

        /// <summary>
        /// 当前资源的依赖资源实体链表（临时存储）
        /// </summary>
        private LinkedList<ResourceEntity> m_DependsResourceList = new LinkedList<ResourceEntity>();

        /// <summary>
        /// 需要加载的依赖资源数量
        /// </summary>
        private int m_NeedLoadAssetDependCount = 0;

        /// <summary>
        /// 当前已经加载的依赖资源数量
        /// </summary>
        private int m_CurrLoadAssetDependCount = 0;

        /// <summary>
        /// 主资源加载完毕
        /// </summary>
        private BaseAction<ResourceEntity> m_OnComplete;

        /// <summary>
        /// 加载主资源
        /// </summary>
        /// <param name="assetCategory"></param>
        /// <param name="assetFullName"></param>
        /// <param name="onComplete"></param>
        public void load(AssetCategory assetCategory, string assetFullName, BaseAction<ResourceEntity> onComplete)
        {
#if DISABLE_ASSETBUNDLE
            m_CurrResourceEntity = GameEntry.Pool.DequeueClassObject<ResourceEntity>();
            m_CurrResourceEntity.Category = assetCategory;
            m_CurrResourceEntity.IsAssetBundle = false;
            m_CurrResourceEntity.ResourceName = assetFullName;
            m_CurrResourceEntity.Target = UnityEditor.AssetDatabase.LoadAssetAtPath<GameObject>(assetFullName);

            if (onComplete != null)
            {
                onComplete(m_CurrResourceEntity);
            }
#else
            m_OnComplete = onComplete;
            m_CurrAssetEntity = GameEntry.Resource.ResourceLoaderManager.GetAssetEntity(assetCategory,assetFullName);
            LoadDependsAsset();
#endif

        }
        /// <summary>
        /// 真正加载主资源
        /// </summary>
        private void LoadMainAsset()
        {
            //m_CurrResourceEntity = new ResourceEntity();
            //1.从分类池中assetpool中查找
            m_CurrResourceEntity = GameEntry.Pool.PoolManager.AssetPool[m_CurrAssetEntity.Category].Spawn(m_CurrAssetEntity.AssetFullName);
         
            if (m_CurrResourceEntity != null)
            {
                //Debug.LogError("从资源包加载" + m_CurrResourceEntity.ResourceName);
                //说明资源在分类池中存在
                if (m_OnComplete!=null)
                {
                    m_OnComplete(m_CurrResourceEntity);
                }
                return;
            }
            //2.找资源包
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle(m_CurrAssetEntity.AssetBundleName, onComplete: (AssetBundle bundle) =>
            {
                //3.加载资源
                GameEntry.Resource.ResourceLoaderManager.LoadAsset(m_CurrAssetEntity.AssetFullName, bundle, onComplete: (UnityEngine.Object obj) =>
                   {
                       //4.再次检查 很重要 
                       m_CurrResourceEntity = GameEntry.Pool.PoolManager.AssetPool[m_CurrAssetEntity.Category].Spawn(m_CurrAssetEntity.AssetFullName);
                       if (m_CurrResourceEntity!=null)
                       {
                           if (m_OnComplete!=null)
                           {
                               m_OnComplete(m_CurrResourceEntity);
                           }
                           return;
                       }

                       m_CurrResourceEntity = GameEntry.Pool.DequeueClassObject<ResourceEntity>();

                       m_CurrResourceEntity.Category = m_CurrAssetEntity.Category;
                       m_CurrResourceEntity.IsAssetBundle = false;
                       m_CurrResourceEntity.ResourceName = m_CurrAssetEntity.AssetFullName;
                       m_CurrResourceEntity.Target = obj;

                       GameEntry.Pool.PoolManager.AssetPool[m_CurrAssetEntity.Category].Register(m_CurrResourceEntity);
                       //加入到这个资源的依赖资源链表里
                       var currDependsResource = m_DependsResourceList.First;
                       while (currDependsResource!=null)
                       {
                           var next = currDependsResource.Next;
                           m_DependsResourceList.Remove(currDependsResource);
                           
                           m_CurrResourceEntity.DependsResourceList.AddLast(currDependsResource);
                           currDependsResource = next;
                       }
                      
                       if (m_OnComplete!=null)
                       {
                           m_OnComplete(m_CurrResourceEntity);
                       }
                       Reset();
                   });
            });
        }
        /// <summary>
        /// 加载依赖资源
        /// </summary>
        private void LoadDependsAsset()
        {
            List<AssetDependsEntity> lst = m_CurrAssetEntity.DependsAssetList;
            if (lst!=null)
            {
                int len = lst.Count;
                m_NeedLoadAssetDependCount = len;
                for (int i = 0; i < len; i++)
                {
                    AssetDependsEntity entity = lst[i];
                    MainAssetLoaderRoutine routine = GameEntry.Pool.DequeueClassObject<MainAssetLoaderRoutine>();
                    routine.load(entity.Category, entity.AssetFullName, OnLoadDependsAssetComplete);
                }
            }
            else
            {
                //这个资源没有依赖 直接加载主资源
                LoadMainAsset();
            }
        }
        /// <summary>
        /// 加载某个依赖资源完成回调
        /// </summary>
        /// <param name="t1"></param>
        private void OnLoadDependsAssetComplete(ResourceEntity res)
        {
            //把这个主资源依赖的资源实体 加入临时链表
            m_DependsResourceList.AddLast(res);

            //把加载出来的资源 加入到池
            m_CurrLoadAssetDependCount++;

            if (m_NeedLoadAssetDependCount==m_CurrLoadAssetDependCount)
            {
                LoadMainAsset();
            }
        }

        /// <summary>
        /// 重置
        /// </summary>
        private void Reset()
        {
            m_OnComplete = null;
            m_CurrAssetEntity = null;
            m_CurrResourceEntity = null;
            m_NeedLoadAssetDependCount = 0;
            m_CurrLoadAssetDependCount = 0;
            m_DependsResourceList.Clear();
            GameEntry.Pool.EnqueueClassObject(this);
        }

    }
}


