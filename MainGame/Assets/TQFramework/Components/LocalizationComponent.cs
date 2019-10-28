using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    public enum TQLanguage
    {
        Chinese = 0,
        English = 1
    }

    /// <summary>
    /// ���ػ����
    /// </summary>
    public class LocalizationComponent : TQBaseComponent
    {
        [SerializeField]
        private TQLanguage m_CurrLanguage;

        /// <summary>
        /// ��ǰ����Ҫ�ͱ���ĵ�һ��
        /// </summary>
        public TQLanguage CurrLanguage
        {
            get { return m_CurrLanguage; }
        }

        private LocalizationManager m_LocalizationManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_LocalizationManager = new LocalizationManager();
#if !UNITY_EDITOR
            Init();
#endif


        }

        private void Init()
        {

            switch (Application.systemLanguage)
            {
         
                case SystemLanguage.ChineseSimplified:
                case SystemLanguage.ChineseTraditional:
                case SystemLanguage.Chinese:
                    m_CurrLanguage = TQLanguage.Chinese;
                    break;
                case SystemLanguage.English:
                    m_CurrLanguage = TQLanguage.English;
                    break;
            }
            //m_CurrLanguage = TQLanguage.English;

        }
        /// <summary>
        /// ��ȡ���ػ��ļ��ڴ�
        /// </summary>
        /// <param name="key"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public string GetString(string key, params object[] args)
        {
            return m_LocalizationManager.GetString(key,args);
        }

        public override void Shutdown()
        {

        }
    }

}
