using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class ResoursePool
    {
#if UNITY_EDITOR
        /// <summary>
        /// 在监视面板上显示的信息
        /// </summary>
        public Dictionary<string, int> InspectorDic = new Dictionary<string, int>();
#endif
        /// <summary>
        /// 资源池名称
        /// </summary>
        public string PoolName
        {
            private set;
            get;
        }
        /// <summary>
        /// 资源池字典
        /// </summary>
        private Dictionary<string, ResourceEntity> m_ResourceDic;

        /// <summary>
        /// 需要移除的Key链表
        /// </summary>
        private LinkedList<string> m_NeedRemoveKeyList;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="poolName">资源池名称</param>
        public ResoursePool(string poolName)
        {
            PoolName = poolName;
            m_ResourceDic = new Dictionary<string, ResourceEntity>();
            m_NeedRemoveKeyList = new LinkedList<string>();
        }
        /// <summary>
        /// 注册到资源池
        /// </summary>
        /// <param name="entity"></param>
        public void Register(ResourceEntity entity)
        {
            entity.Spawn();
#if UNITY_EDITOR
            InspectorDic[entity.ResourceName] = entity.ReferneceCount;
#endif
            m_ResourceDic.Add(entity.ResourceName, entity);
        }
        /// <summary>
        /// 资源取池
        /// </summary>
        /// <param name="resourseName"></param>
        /// <returns></returns>
        public ResourceEntity Spawn(string resourseName)
        {
            ResourceEntity resourceEntity = null;

            if (m_ResourceDic.TryGetValue(resourseName, out resourceEntity))
            {
                resourceEntity.Spawn();
#if UNITY_EDITOR
                if (InspectorDic.ContainsKey(resourceEntity.ResourceName))
                {
                    InspectorDic[resourceEntity.ResourceName] = resourceEntity.ReferneceCount;
                }
#endif
            }
            return resourceEntity;
        }
        /// <summary>
        /// 资源回池
        /// </summary>
        /// <param name="resourceName"></param>
        public void Unspawn(string resourceName)
        {
            ResourceEntity resourceEntity = null;
            if (m_ResourceDic.TryGetValue(resourceName, out resourceEntity))
            {
                resourceEntity.Unspawn();
#if UNITY_EDITOR
                if (InspectorDic.ContainsKey(resourceEntity.ResourceName))
                {
                    InspectorDic[resourceEntity.ResourceName] = resourceEntity.ReferneceCount;
                }
#endif
            }
        }
        /// <summary>
        /// 释放资源池中可释放对象
        /// </summary>
        public void Release()
        {
            var enunerator = m_ResourceDic.GetEnumerator();
            while (enunerator.MoveNext())
            {
                ResourceEntity resourceEntity = enunerator.Current.Value;
                if (resourceEntity.GetCanRelease())
                {
#if UNITY_EDITOR
                    if (InspectorDic.ContainsKey(resourceEntity.ResourceName))
                    {
                        InspectorDic.Remove(resourceEntity.ResourceName);
                    }
#endif
                    m_NeedRemoveKeyList.AddFirst(resourceEntity.ResourceName);
                    resourceEntity.Release();
                }
            }

            //循环链表 从字典中移除指定的key
            LinkedListNode<string> curr = m_NeedRemoveKeyList.First;
            while (curr != null)
            {
                string key = curr.Value;
                m_ResourceDic.Remove(key);
                
                LinkedListNode<string> next = curr.Next;
                m_NeedRemoveKeyList.Remove(curr);
                curr = next;
            }
        }

        /// <summary>
        /// 是否内存所有资源
        /// </summary>
        public void ReleaseAll()
        {
            var enunerator = m_ResourceDic.GetEnumerator();
            while (enunerator.MoveNext())
            {
                ResourceEntity resourceEntity = enunerator.Current.Value;
                if (resourceEntity.GetCanRelease())
                {
#if UNITY_EDITOR
                    if (InspectorDic.ContainsKey(resourceEntity.ResourceName))
                    {
                        InspectorDic.Remove(resourceEntity.ResourceName);
                    }
#endif
                    m_NeedRemoveKeyList.AddFirst(resourceEntity.ResourceName);
                    resourceEntity.Release();
                }
            }

            //循环链表 从字典中移除指定的key
            LinkedListNode<string> curr = m_NeedRemoveKeyList.First;
            while (curr != null)
            {
                string key = curr.Value;
                m_ResourceDic.Remove(key);

                LinkedListNode<string> next = curr.Next;
                m_NeedRemoveKeyList.Remove(curr);
                curr = next;
            }
        }
    }
}

