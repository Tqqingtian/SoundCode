using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ʱ�������
    /// </summary>
    public class TimeManager : ManagerBase,System.IDisposable
    {
        /// <summary>
        /// ��ʱ�����б�
        /// </summary>
        private LinkedList<TimeAction> m_TimeActionList;

        public TimeManager()
        {
            m_TimeActionList = new LinkedList<TimeAction>();
        }
        /// <summary>
        /// ע�ᶨʱ��
        /// </summary>
        /// <param name="action"></param>
        internal void RegisterTimeAction(TimeAction action)
        {
            m_TimeActionList.AddLast(action);
        }
        /// <summary>
        /// �Ƴ���ʱ��
        /// </summary>
        /// <param name="action"></param>
        internal void RemoveTimeAction(TimeAction action)
        {
            m_TimeActionList.Remove(action);
        }

        internal void OnUpdate()
        {
            for (LinkedListNode<TimeAction> curr= m_TimeActionList.First;curr!=null;curr=curr.Next)
            {
                curr.Value.OnUpdate();
            }
        }

        public void Dispose()
        {
            m_TimeActionList.Clear();
        }
    }

}
