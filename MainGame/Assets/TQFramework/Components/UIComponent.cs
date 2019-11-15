using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace TQ
{
    /// <summary>
    /// ui���
    /// </summary>
    public class UIComponent : TQBaseComponent, IUpdateComponent
    {
        [Header("��׼�Ŀ��")]
        [SerializeField]
        private int m_StandardWidth = 1280;

        [Header("��׼�ĸ߶�")]
        [SerializeField]
        private int m_StandardHeight = 720;

        [Header("ui�����")]
        public Camera UICamera;

        [Header("������")]
        private Canvas m_UIRootCanvas;

        [Header("������������")]
        [SerializeField]
        private CanvasScaler m_UIRootCanvasScaler;

        [Header("UI����")]
        [SerializeField]
        private UIGroup[] UIGroups;

        /// <summary>
        /// ui�����б�
        /// </summary>
        private Dictionary<byte, UIGroup> m_UIGroupDic;

        /// <summary>
        /// ��׼�ֱ��ʱ�ֵ
        /// </summary>
        private float m_StandardScreen = 0;
        /// <summary>
        /// ��ǰ�ֱ��ʱ�ֵ
        /// </summary>
        private float m_CurrScreen = 0;

        private UIManager m_UIManager;

        private UILayer m_UILayer;

        private UIPool m_UIPool;
        [Header("�ͷż�����룩")]
        [SerializeField]
        private float m_ClearInterval = 120;
        /// <summary>
        /// ui��غ����ʱ��
        /// </summary>
        public float UIExpire = 100f;
        /// <summary>
        /// �´�����ʱ��
        /// </summary>
        private float m_NextRunTime = 0f;
        /// <summary>
        /// ui������� ��������
        /// </summary>
        public int UIPoolMaxCount = 5;

        protected override void OnAwake()
        {
            base.OnAwake();
            Debug.Log("��ʼ������Ӧ");
            m_UIGroupDic = new Dictionary<byte, UIGroup>();
            GameEntry.RegisterUpdateComponent(this);

            m_StandardScreen = m_StandardWidth / (float)m_StandardHeight;
            m_CurrScreen = Screen.width / (float)Screen.height;

            //NormalFormCanvasScaler();
            LoadingFormCanvasScaler();
            int len = UIGroups.Length;
            for (int i = 0; i < len; i++)
            {
                UIGroup group = UIGroups[i];
                m_UIGroupDic[group.Id] = group;
            }
            m_UIManager = new UIManager();
            m_UILayer = new UILayer();
            m_UILayer.Init(UIGroups);

            m_UIPool = new UIPool();
        }

        #region UI����
        /// <summary>
        /// LoadingForm��������
        /// </summary>
        public void LoadingFormCanvasScaler()
        {


            if (m_CurrScreen > m_StandardScreen)
            {
                m_UIRootCanvasScaler.matchWidthOrHeight = 0;
            }
            else
            {
                m_UIRootCanvasScaler.matchWidthOrHeight = m_StandardScreen - m_CurrScreen;
            }

        }
        /// <summary>
        /// FullForm��������
        /// </summary>
        public void FullFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = 1;
        }

        /// <summary>
        /// NormalĬ����������
        /// </summary>
        public void NormalFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = m_CurrScreen >= m_StandardScreen ? 1 : 0;

        }
        #endregion

        #region GetGroup ����ui�����Ż�ȡui����
        /// <summary>
        /// ����ui�����Ż�ȡui����
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public UIGroup GetGroup(byte id)
        {
            UIGroup group = null;
            m_UIGroupDic.TryGetValue(id, out group);
            return group;
        }
        #endregion

        /// <summary>
        /// ��ui����
        /// </summary>
        public void OpenUIForm(int uiFormID, object userData = null, BaseAction<UIFormBase> onOpen = null)
        {
            m_UIPool.CheckByOpenUI();

            m_UIManager.OpenUIForm(uiFormID, userData, onOpen);
        }
        /// <summary>
        /// ����uiFormId�ر�ui
        /// </summary>
        /// <param name="uiformId"></param>
        public void CloseUIForm(int uiformId)
        {
            print("����uiFormId�ر�ui" + uiformId);
            m_UIManager.CloseUIForm(uiformId);
        }
        public void CloseUIForm(UIFormBase formBase)
        {
            m_UIManager.CloseUIForm(formBase);
        }
        /// <summary>
        /// ���ò㼶
        /// </summary>
        /// <param name="formBase"></param>
        /// <param name="isAdd"></param>
        internal void SetSortingOrder(UIFormBase formBase, bool isAdd)
        {
            m_UILayer.SetSortingOrder(formBase, isAdd);
        }
        /// <summary>
        /// ��ui������л�ȡui
        /// </summary>
        /// <param name="uiFormId"></param>
        /// <returns></returns>
        public UIFormBase Dequeue(int uiFormId)
        {

            return m_UIPool.Dequeue(uiFormId);
        }
        /// <summary>
        /// ui�س�
        /// </summary>
        /// <param name="form"></param>
        public void Enqueue(UIFormBase form)
        {
            m_UIPool.Enqueue(form);
        }

        public void OnUpdate()
        {
            if (Time.time > m_NextRunTime + m_ClearInterval)
            {
                m_NextRunTime = Time.time;
                //�ͷŶ���
                m_UIPool.CheckClear();
            }
        }

        public override void Shutdown()
        {
            //Debug.Log("UI���Shutdown");
        }
    }
}

