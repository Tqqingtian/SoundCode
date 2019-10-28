using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace TQ
{
    /// <summary>
    /// ui组件
    /// </summary>
    public class UIComponent : TQBaseComponent, IUpdateComponent
    {
        [Header("标准的宽度")]
        [SerializeField]
        private int m_StandardWidth = 720;

        [Header("标准的高度")]
        [SerializeField]
        private int m_StandardHeight = 1280;

        [Header("ui摄像机")]
        public Camera UICamera;

        [Header("根画布")]
        private Canvas m_UIRootCanvas;

        [Header("根画布的缩放")]
        [SerializeField]
        private CanvasScaler m_UIRootCanvasScaler;

        [Header("UI分组")]
        [SerializeField]
        private UIGroup[] UIGroups;

        /// <summary>
        /// ui分组列表
        /// </summary>
        private Dictionary<byte, UIGroup> m_UIGroupDic;

        /// <summary>
        /// 标准分辨率比值
        /// </summary>
        private float m_StandardScreen = 0;
        /// <summary>
        /// 当前分辨率比值
        /// </summary>
        private float m_CurrScreen = 0;

        private UIManager m_UIManager;

        private UILayer m_UILayer;

        private UIPool m_UIPool;
        [Header("释放间隔（秒）")]
        [SerializeField]
        private float m_ClearInterval = 120;
        /// <summary>
        /// ui会池后过期时间
        /// </summary>
        public float UIExpire = 100f;
        /// <summary>
        /// 下次运行时间
        /// </summary>
        private float m_NextRunTime = 0f;
        /// <summary>
        /// ui对象池中 最大的数量
        /// </summary>
        public int UIPoolMaxCount = 5;

        protected override void OnAwake()
        {
            base.OnAwake();
            
            m_UIGroupDic = new Dictionary<byte, UIGroup>();
            GameEntry.RegisterUpdateComponent(this);

            m_StandardScreen = m_StandardWidth / (float)m_StandardHeight;
            m_CurrScreen = Screen.width / (float)Screen.height;

            NormalFormCanvasScaler();
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
        
        #region UI适配
        /// <summary>
        /// LoadingForm适配缩放
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
        /// FullForm适配缩放
        /// </summary>
        public void FullFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = 1;
        }

        /// <summary>
        /// Normal默认适配缩放
        /// </summary>
        public void NormalFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = m_CurrScreen >= m_StandardScreen ? 1:0;
            
        }
        #endregion

        #region GetGroup 根据ui分组编号获取ui分组
        /// <summary>
        /// 根据ui分组编号获取ui分组
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
        /// 打开ui窗口
        /// </summary>
        public void OpenUIForm(int uiFormID, object userData = null,BaseAction<UIFormBase> onOpen=null)
        {
            m_UIPool.CheckByOpenUI();
            m_UIManager.OpenUIForm(uiFormID, userData, onOpen);
        }
        /// <summary>
        /// 打开UI的小实体
        /// </summary>
        public ResourceEntity LoadUIItem(int uiItemID)
        {
            return  m_UIManager.LoadUIItem(uiItemID);
        }
        /// <summary>
        /// 根据uiFormId关闭ui
        /// </summary>
        /// <param name="uiformId"></param>
        public void CloseUIForm(int uiformId)
        {
            print("根据uiFormId关闭ui"+uiformId);
            m_UIManager.CloseUIForm(uiformId);
        }
        public void CloseUIForm(UIFormBase formBase)
        {
            m_UIManager.CloseUIForm(formBase);
        }
        /// <summary>
        /// 设置层级
        /// </summary>
        /// <param name="formBase"></param>
        /// <param name="isAdd"></param>
        internal void SetSortingOrder(UIFormBase formBase, bool isAdd)
        {
            m_UILayer.SetSortingOrder(formBase, isAdd);
        }
        /// <summary>
        /// 从ui对象池中获取ui
        /// </summary>
        /// <param name="uiFormId"></param>
        /// <returns></returns>
        public UIFormBase Dequeue(int uiFormId)
        {

           return m_UIPool.Dequeue(uiFormId);
        }
        /// <summary>
        /// ui回池
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
                //释放对象
                m_UIPool.CheckClear();
            }
        }

        public override void Shutdown()
        {
            //Debug.Log("UI组件Shutdown");
        }
    }
}

