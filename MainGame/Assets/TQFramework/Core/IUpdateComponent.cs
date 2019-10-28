using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ��������ӿ�
    /// </summary>
    public interface  IUpdateComponent 
    {
        /// <summary>
        /// ���·���
        /// </summary>
        void OnUpdate();

        /// <summary>
        /// ʵ�ʵı��
        /// </summary>
        int InstanceId { get; }
    }
}

