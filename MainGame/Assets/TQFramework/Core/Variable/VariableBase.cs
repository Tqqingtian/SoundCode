using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ��������
    /// </summary>
    public abstract class VariableBase 
    {
        /// <summary>
        /// ��ȡ��������
        /// </summary>
        public abstract Type Type
        {
            get;
        }
        /// <summary>
        /// ���ü���
        /// </summary>
        public byte ReferenceCount
        {
            get;
            private set;

        }
        /// <summary>
        /// ��������
        /// </summary>
        public void Retain()
        {
            ReferenceCount++;
        }
        /// <summary>
        /// �ͷŶ���
        /// </summary>
        public void Release()
        {
            ReferenceCount--;
            if (ReferenceCount<1)
            {
                //�سز���
                GameEntry.Pool.EnqueueVarObject(this);
            }
        }


    }
}

