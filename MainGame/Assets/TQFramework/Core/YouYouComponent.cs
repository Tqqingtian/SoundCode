using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    public class TQComponent : MonoBehaviour
    {

        /// <summary>
        /// 组件实例的id
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
        /// 调这个使用start
        /// </summary>
        protected virtual void OnStart() { }


        /// <summary>
        /// 调这个使用awake
        /// </summary>
        protected virtual void OnAwake() { }

    }

}
