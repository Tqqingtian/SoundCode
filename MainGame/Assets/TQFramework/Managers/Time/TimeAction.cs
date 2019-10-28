using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ��ʱ��
    /// </summary>
    public class TimeAction
    {
        /// <summary>
        /// �Ƿ���������
        /// </summary>
        public bool IsRuning
        {
            get;
            private set;
        }
        /// <summary>
        /// �Ƿ���ͣ
        /// </summary>
        public bool m_IsPause = false;

        /// <summary>
        /// ��ǰ���е�ʱ��
        /// </summary>
        private float m_CurrRunTime;

        /// <summary>
        /// ��ǰѭ������
        /// </summary>
        private int m_CurrLoop;
        /// <summary>
        /// �ӳ�ʱ��
        /// </summary>
        private float m_DelayTime;

        /// <summary>
        /// ������룩
        /// </summary>
        private float m_Interval;

        /// <summary>
        /// ѭ������(-1������ѭ�� 0Ҳ��ִ��һ��)
        /// </summary>
        private int m_Loop;

        /// <summary>
        /// ������ͣʱ��
        /// </summary>
        private float m_LastPauseTime;

        /// <summary>
        /// ��ͣʱ��
        /// </summary>
        private float m_PauseTime;

        /// <summary>
        /// ��ʼ����
        /// </summary>
        private Action m_OnStart;

        /// <summary>
        /// ������ �ص���ʾ����
        /// </summary>
        private Action<int> m_OnUpdate;

        /// <summary>
        /// �������
        /// </summary>
        private Action m_OnComplete;

        /// <summary>
        /// ��ʼ��
        /// </summary>
        /// <param name="delayTime">�ӳ�ʱ��</param>
        /// <param name="interval">������룩</param>
        /// <param name="loop">ѭ������</param>
        /// <param name="onStart">��ʼ����</param>
        /// <param name="onUpdate">������ �ص���ʾ����</param>
        /// <param name="onComplete">�������</param>
        /// <returns></returns>
        public TimeAction Init(float delayTime, float interval, int loop, Action onStart, Action<int> onUpdate, Action onComplete)
        {
            m_DelayTime = delayTime;
            m_Interval = interval;
            m_Loop = loop;
            m_OnStart = onStart;
            m_OnUpdate = onUpdate;
            m_OnComplete = onComplete;
            return this;
        }

        public void Run()
        {
            //��Ҫ�Ȱ��Լ����뵽ʱ����������б���
            GameEntry.Time.RegisterTimeAction(this);
            //���õ�ǰ���õ�ʱ��
            m_CurrRunTime = Time.time;
            m_IsPause = false;
        }
       
        /// <summary>
        /// ֹͣ
        /// </summary>
        public void Stop()
        {
            if (m_OnComplete != null)
            {
               
                m_OnComplete();

            }
            IsRuning = false;
            //�Ƴ�
            GameEntry.Time.RemoveTimeAction(this);
        }

        /// <summary>
        /// ��ͣ
        /// </summary>
        public void Pause()
        {
            m_LastPauseTime = Time.time;
            m_IsPause = true;
            Debug.LogError("��ͣ");
        }
        /// <summary>
        /// �ָ�
        /// </summary>
        public void Resume()
        {
            m_IsPause = false;
            //������ͣ�˶��
            m_PauseTime = Time.time - m_LastPauseTime;

        }

        /// <summary>
        /// ÿִ֡��
        /// </summary>
        public void OnUpdate()
        {
            if (m_IsPause) return;

            //���ӳپͲ�ִ��
            if (Time.time >= m_CurrRunTime + m_DelayTime + m_PauseTime)
            {
                Debug.LogError("��ʱ");
                //��ִ�е����� �ͱ�ʾ�Ѿ���һ�ι����ӳ�ʱ��
                IsRuning = true;
                m_CurrRunTime = Time.time;
                m_PauseTime = 0;
                if (m_OnStart != null)
                {
                    m_OnStart();
                }
            }
            if (!IsRuning) return;

            if (Time.time > m_CurrRunTime+ m_PauseTime)
            {
                m_CurrRunTime = Time.time + m_Interval;
                m_PauseTime = 0;
                //���´��� ��� ʱ��ִ��һ��
                if (m_OnUpdate != null)
                {
                    m_OnUpdate(m_Loop - m_CurrLoop);
                }
                if (m_Loop > -1)
                {
                   
                    m_CurrLoop++;
                  
                    if (m_CurrLoop >= m_Loop)
                    {
                        Stop();
                    }
                }
            }
        }
    }
}

