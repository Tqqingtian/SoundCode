using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
namespace TQ
{
    /// <summary>
    /// ����Ļ���
    /// </summary>
    public abstract class TQBaseComponent : TQComponent
    {
        protected override void OnAwake()
        {
            base.OnAwake();
            //����������������б�
            GameEntry.RegisterBaseComponent(this);
        }
      
        /// <summary>
        /// �رշ���
        /// </summary>
        public abstract void Shutdown();
    }
}

