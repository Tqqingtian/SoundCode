using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ����Դ������������Դ����Ե� �Ǹ�������Ҫ���ص���Դ���жϣ�
    /// </summary>
    public class MainAssetLoaderRoutine
    {
        /// <summary>
        /// ��ǰ����Դ��Ϣʵ��
        /// </summary>
        private AssetEntity m_CurrAssetEntity;

        /// <summary>
        /// ��ǰ����Դʵ��
        /// </summary>
        private ResourceEntity m_CurrResourceEntity;

        /// <summary>
        /// ��ǰ��Դ��������Դʵ��������ʱ�洢��
        /// </summary>
        private LinkedList<ResourceEntity> m_DependsResourceList = new LinkedList<ResourceEntity>();

        /// <summary>
        /// ��Ҫ���ص�������Դ����
        /// </summary>
        private int m_NeedLoadAssetDependCount = 0;

        /// <summary>
        /// ��ǰ�Ѿ����ص�������Դ����
        /// </summary>
        private int m_CurrLoadAssetDependCount = 0;

        /// <summary>
        /// ����Դ�������
        /// </summary>
        private BaseAction<ResourceEntity> m_OnComplete;

        /// <summary>
        /// ��������Դ
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
        /// ������������Դ
        /// </summary>
        private void LoadMainAsset()
        {
            //m_CurrResourceEntity = new ResourceEntity();
            //1.�ӷ������assetpool�в���
            m_CurrResourceEntity = GameEntry.Pool.PoolManager.AssetPool[m_CurrAssetEntity.Category].Spawn(m_CurrAssetEntity.AssetFullName);
         
            if (m_CurrResourceEntity != null)
            {
                //Debug.LogError("����Դ������" + m_CurrResourceEntity.ResourceName);
                //˵����Դ�ڷ�����д���
                if (m_OnComplete!=null)
                {
                    m_OnComplete(m_CurrResourceEntity);
                }
                return;
            }
            //2.����Դ��
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle(m_CurrAssetEntity.AssetBundleName, onComplete: (AssetBundle bundle) =>
            {
                //3.������Դ
                GameEntry.Resource.ResourceLoaderManager.LoadAsset(m_CurrAssetEntity.AssetFullName, bundle, onComplete: (UnityEngine.Object obj) =>
                   {
                       //4.�ٴμ�� ����Ҫ 
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
                       //���뵽�����Դ��������Դ������
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
        /// ����������Դ
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
                //�����Դû������ ֱ�Ӽ�������Դ
                LoadMainAsset();
            }
        }
        /// <summary>
        /// ����ĳ��������Դ��ɻص�
        /// </summary>
        /// <param name="t1"></param>
        private void OnLoadDependsAssetComplete(ResourceEntity res)
        {
            //���������Դ��������Դʵ�� ������ʱ����
            m_DependsResourceList.AddLast(res);

            //�Ѽ��س�������Դ ���뵽��
            m_CurrLoadAssetDependCount++;

            if (m_NeedLoadAssetDependCount==m_CurrLoadAssetDependCount)
            {
                LoadMainAsset();
            }
        }

        /// <summary>
        /// ����
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


