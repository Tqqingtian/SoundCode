using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 更新组件接口
    /// </summary>
    public interface  IUpdateComponent 
    {
        /// <summary>
        /// 更新方法
        /// </summary>
        void OnUpdate();

        /// <summary>
        /// 实际的编号
        /// </summary>
        int InstanceId { get; }
    }
}

