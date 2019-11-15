using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
namespace TQ
{
    /// <summary>
    /// 组件的基类
    /// </summary>
    public abstract class TQBaseComponent : TQComponent
    {
        protected override void OnAwake()
        {
            base.OnAwake();
            //把组件加入基础组件列表
            GameEntry.RegisterBaseComponent(this);
        }
      
        /// <summary>
        /// 关闭方法
        /// </summary>
        public abstract void Shutdown();
    }
}

