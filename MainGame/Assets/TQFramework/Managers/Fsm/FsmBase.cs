using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public abstract class FsmBase 
    {
        /// <summary>
        /// ״̬�����
        /// </summary>
        public int FsmId { get; private set; }
        /// <summary>
        /// ӵ����
        /// </summary>
        public Type Owner { get; private set; }

        /// <summary>
        /// ��ǰ״̬����
        /// </summary>
        public byte CurrStateType;

        public FsmBase(int fsmId)
        {
            FsmId = fsmId;
        }
        /// <summary>
        /// �ر�״̬��
        /// </summary>
        public abstract void ShutDown();

    }
}

