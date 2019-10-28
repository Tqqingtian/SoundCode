using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    public class TQComponent : MonoBehaviour
    {

        /// <summary>
        /// ���ʵ����id
        /// </summary>
        private int m_InstanceId;

        public int InstanceId
        {

            get { return m_InstanceId; }
        }
        private void Awake()
        {
            m_InstanceId = GetInstanceID();

            OnAwake();

        }
        private void Start()
        {
            OnStart();

        }
        /// <summary>
        /// �����ʹ��start
        /// </summary>
        protected virtual void OnStart() { }


        /// <summary>
        /// �����ʹ��awake
        /// </summary>
        protected virtual void OnAwake() { }

    }

}
