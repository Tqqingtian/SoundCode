using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 状态机的状态
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class FsmState<T> where T : class
    {
        /// <summary>
        /// 状态对应的状态
        /// </summary>
        public Fsm<T> CurrFsm;
        /// <summary>
        /// 进入状态
        /// </summary>
        public virtual void OnEnter() { }
        /// <summary>
        /// 更新状态
        /// </summary>
        public virtual void OnUpdate() { }
        /// <summary>
        /// 离开状态
        /// </summary>
        public virtual void OnLeave() { }
        /// <summary>
        /// 销毁状态
        /// </summary>
        public virtual void OnDestry() { }


    }
}

