using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ʱ�����
    /// </summary>
    public class TimeComponent : TQBaseComponent, IUpdateComponent
    {
   
        protected override void OnAwake()
        {
            base.OnAwake();
            //ע��������
            GameEntry.RegisterUpdateComponent(this);
            m_TimeManager = new TimeManager();

        }
        #region ��ʱ����ص�
        /// <summary>
        /// ��ʱ��������
        /// </summary>
        private TimeManager m_TimeManager;

        /// <summary>
        /// ע�ᶨʱ��
        /// </summary>
        /// <param name="action"></param>
        internal void RegisterTimeAction(TimeAction action)
        {
            m_TimeManager.RegisterTimeAction(action);
        }
        /// <summary>
        /// �Ƴ���ʱ��
        /// </summary>
        /// <param name="action"></param>
        internal void RemoveTimeAction(TimeAction action)
        {
            m_TimeManager.RemoveTimeAction(action);
            GameEntry.Pool.EnqueueClassObject(action);
        }
        /// <summary>
        /// ������ʱ��
        /// </summary>
        /// <returns></returns>
        public TimeAction CreateTimeAction()
        {
            TimeAction action = GameEntry.Pool.DequeueClassObject<TimeAction>();
            return action;
        }
        #endregion
        public void OnUpdate()
        {
            //Debug.Log("ʱ�����OnUpdate");
            m_TimeManager.OnUpdate();
        }

        public override void Shutdown()
        {
            m_TimeManager.Dispose();
        }
        /// <summary>
        /// ��һ֡
        /// </summary>
        /// <param name="onComplete"></param>
        public void Yield(BaseAction onComplete)
        {
            StartCoroutine(YieldCoroutine(onComplete));
        }

        private IEnumerator YieldCoroutine(BaseAction onComplete)
        {
            yield return null;
            if (onComplete != null)
            {
                onComplete();
            }
        }
    }

}
