using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 定时器
    /// </summary>
    public class TimeAction
    {
        /// <summary>
        /// 是否在运行中
        /// </summary>
        public bool IsRuning
        {
            get;
            private set;
        }
        /// <summary>
        /// 是否暂停
        /// </summary>
        public bool m_IsPause = false;

        /// <summary>
        /// 当前运行的时间
        /// </summary>
        private float m_CurrRunTime;

        /// <summary>
        /// 当前循环次数
        /// </summary>
        private int m_CurrLoop;
        /// <summary>
        /// 延迟时间
        /// </summary>
        private float m_DelayTime;

        /// <summary>
        /// 间隔（秒）
        /// </summary>
        private float m_Interval;

        /// <summary>
        /// 循环次数(-1是无限循环 0也会执行一次)
        /// </summary>
        private int m_Loop;

        /// <summary>
        /// 最后的暂停时间
        /// </summary>
        private float m_LastPauseTime;

        /// <summary>
        /// 暂停时间
        /// </summary>
        private float m_PauseTime;

        /// <summary>
        /// 开始运行
        /// </summary>
        private Action m_OnStart;

        /// <summary>
        /// 运行中 回调表示次数
        /// </summary>
        private Action<int> m_OnUpdate;

        /// <summary>
        /// 运行完毕
        /// </summary>
        private Action m_OnComplete;

        /// <summary>
        /// 初始化
        /// </summary>
        /// <param name="delayTime">延迟时间</param>
        /// <param name="interval">间隔（秒）</param>
        /// <param name="loop">循环次数</param>
        /// <param name="onStart">开始运行</param>
        /// <param name="onUpdate">运行中 回调表示次数</param>
        /// <param name="onComplete">运行完毕</param>
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
            //需要先把自己加入到时间管理器的列表中
            GameEntry.Time.RegisterTimeAction(this);
            //设置当前设置的时间
            m_CurrRunTime = Time.time;
            m_IsPause = false;
        }
       
        /// <summary>
        /// 停止
        /// </summary>
        public void Stop()
        {
            if (m_OnComplete != null)
            {
               
                m_OnComplete();

            }
            IsRuning = false;
            //移除
            GameEntry.Time.RemoveTimeAction(this);
        }

        /// <summary>
        /// 暂停
        /// </summary>
        public void Pause()
        {
            m_LastPauseTime = Time.time;
            m_IsPause = true;
            Debug.LogError("暂停");
        }
        /// <summary>
        /// 恢复
        /// </summary>
        public void Resume()
        {
            m_IsPause = false;
            //计算暂停了多久
            m_PauseTime = Time.time - m_LastPauseTime;

        }

        /// <summary>
        /// 每帧执行
        /// </summary>
        public void OnUpdate()
        {
            if (m_IsPause) return;

            //有延迟就不执行
            if (Time.time >= m_CurrRunTime + m_DelayTime + m_PauseTime)
            {
                Debug.LogError("延时");
                //当执行到这里 就表示已经第一次过了延迟时间
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
                //以下代码 间隔 时间执行一次
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

