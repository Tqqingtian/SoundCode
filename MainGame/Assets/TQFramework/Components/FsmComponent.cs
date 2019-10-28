using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ״̬�����
    /// </summary>
    public class FsmComponent : TQBaseComponent
    {
        /// <summary>
        /// ״̬���Ĺ�����
        /// </summary>
        private FsmManager m_FsmManager;
        /// <summary>
        /// ״̬������ʱ���
        /// </summary>
        private int m_TemFsmId = 0;


        protected override void OnAwake()
        {
            base.OnAwake();
            m_FsmManager = new FsmManager();

        }
        /// <summary>
        /// ״̬�����ֵ�
        /// </summary>
        private Dictionary<int, FsmBase> m_FsmDic;
        /// <summary>
        /// ����״̬��
        /// </summary>
        /// <typeparam name="T">ӵ��������</typeparam>
        /// <param name="owner">ӵ����</param>
        /// <param name="states">״̬����</param>
        /// <returns></returns>
        public Fsm<T> Create<T>(T owner, FsmState<T>[] states) where T : class
        {
            return m_FsmManager.Create<T>(m_TemFsmId++, owner, states);

        }
        /// <summary>
        /// ����״̬��
        /// </summary>
        /// <param name="fsmId"></param>
        public void DestroyFsm(int fsmId)
        {
            m_FsmManager.DestroyFsm(fsmId);
        }


        public override void Shutdown()
        {
            m_FsmManager.Dispose();
        }
    }

}
