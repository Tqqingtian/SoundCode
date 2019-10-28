using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// �������ͻ���
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class Variable<T> : VariableBase
    {
        /// <summary>
        /// ��ǰ�洢����ʵֵ
        /// </summary>
        public T Value;

        /// <summary>
        /// ��������
        /// </summary>
        public override Type Type
        {
            get
            {
                return typeof(T);
            }
        }
    }
}
