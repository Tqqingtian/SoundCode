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
        /// �ڼ����������ʾ����Ϣ
        /// </summary>
        public Dictionary<string, int> InspectorDic = new Dictionary<string, int>();
#endif
        /// <summary>
        /// ��Դ������
        /// </summary>
        public string PoolName
        {
            private set;
            get;
        }
        /// <summary>
        /// ��Դ���ֵ�
        /// </summary>
        private Dictionary<string, ResourceEntity> m_ResourceDic;

        /// <summary>
        /// ��Ҫ�Ƴ���Key����
        /// </summary>
        private LinkedList<string> m_NeedRemoveKeyList;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="poolName">��Դ������</param>
        public ResoursePool(string poolName)
        {
            PoolName = poolName;
            m_ResourceDic = new Dictionary<string, ResourceEntity>();
            m_NeedRemoveKeyList = new LinkedList<string>();
        }
        /// <summary>
        /// ע�ᵽ��Դ��
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
        /// ��Դȡ��
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
        /// ��Դ�س�
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
        /// �ͷ���Դ���п��ͷŶ���
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

            //ѭ������ ���ֵ����Ƴ�ָ����key
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
        /// �Ƿ��ڴ�������Դ
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

            //ѭ������ ���ֵ����Ƴ�ָ����key
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

