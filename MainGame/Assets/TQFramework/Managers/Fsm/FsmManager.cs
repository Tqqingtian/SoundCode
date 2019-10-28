using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// ״̬��������
    /// </summary>
    public class FsmManager : ManagerBase,System.IDisposable
    {
        /// <summary>
        /// ״̬�����ֵ�
        /// </summary>
        private Dictionary<int, FsmBase> m_FsmDic;

        public FsmManager()
        {
            m_FsmDic = new Dictionary<int, FsmBase>();
        }

        /// <summary>
        /// ����״̬��
        /// </summary>
        /// <typeparam name="T">ӵ��������</typeparam>
        /// <param name="fsmId">ӵ���߱��</param>
        /// <param name="owner">ӵ����</param>
        /// <param name="states">״̬����</param>
        /// <returns></returns>
        public Fsm<T> Create<T>(int fsmId,T owner,FsmState<T>[] states) where T : class
        {
            Fsm<T> fsm = new Fsm<T>(fsmId,owner,states);


            m_FsmDic[fsmId]= fsm;

            return fsm;

        }
        /// <summary>
        /// ����״̬��
        /// </summary>
        /// <param name="fsmId"></param>
        public void DestroyFsm(int fsmId)
        {
            FsmBase fsm = null;
            if(m_FsmDic.TryGetValue(fsmId,out fsm))
            {
                m_FsmDic.Remove(fsmId);
            }
        }

        public void Dispose()
        {
            var enumerator = m_FsmDic.GetEnumerator();
            while (enumerator.MoveNext())
            {
                enumerator.Current.Value.ShutDown();
            }

            m_FsmDic.Clear();
        }
    }
}

