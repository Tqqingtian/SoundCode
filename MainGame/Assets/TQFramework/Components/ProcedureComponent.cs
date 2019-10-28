using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// �������
    /// </summary>
    public class ProcedureComponent : TQBaseComponent,IUpdateComponent
    {
        /// <summary>
        /// ���̹�����
        /// </summary>
        private ProcedureManager m_ProcedureManager;
        /// <summary>
        /// ��ǰ������״̬
        /// </summary>
        public ProcedureState CurrProcedureState
        {
            get
            {
                return m_ProcedureManager.CurrProcedureState;
            }
        }

        /// <summary>
        /// ��ǰ����
        /// </summary>
        public FsmState<ProcedureManager> CurrProcedure
        {
            get
            {
                return m_ProcedureManager.CurrProcedure;
            }
        }
        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_ProcedureManager = new ProcedureManager();
        }
        protected override void OnStart()
        {
            base.OnStart();
            //Ҫ��Startʱ���г�ʼ��
            m_ProcedureManager.Init();

        }
        /// <summary>
        /// ����ֵ����
        /// </summary>
        /// <typeparam name="TData">���͵�����</typeparam>
        /// <param name="key"></param>
        /// <param name="value"></param>
        public void SetData<TData>(string key, TData value)
        {
            m_ProcedureManager.CurrFsm.SetData<TData>(key, value);
        }
        /// <summary>
        /// ��ȡ����ֵ
        /// </summary>
        /// <typeparam name="TData"></typeparam>
        /// <param name="key"></param>
        /// <returns></returns>
        public TData GetData<TData>(string key)
        {
            return m_ProcedureManager.CurrFsm.GetData<TData>(key);
        }
        public void ChangeState(ProcedureState state)
        {
            m_ProcedureManager.ChangeState(state);
        }
        public override void Shutdown()
        {
            m_ProcedureManager.Dispose();
        }

        public void OnUpdate()
        {
            m_ProcedureManager.OnUpdate();
        }
    }
}

