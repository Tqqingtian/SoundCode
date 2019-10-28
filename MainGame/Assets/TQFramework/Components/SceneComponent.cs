using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// �������
    /// </summary>
    public class SceneComponent : TQBaseComponent,IUpdateComponent
    {
        private TQSceneManager m_TQSceneManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_TQSceneManager = new TQSceneManager();
        }
        /// <summary>
        /// ���س���
        /// </summary>
        /// <param name="sceneId">����id</param>
        /// <param name="showLoadingForm">�Ƿ���ʾui</param>
        /// <param name="onComplete">��ɻص�</param>
        public void LoadScene(int sceneId,bool showLoadingForm = false,BaseAction onComplete =null)
        {
            m_TQSceneManager.LoadScene(sceneId, showLoadingForm, onComplete);
        }
        
        /// <summary>
        /// 
        /// </summary>
        public override void Shutdown()
        {
            GameEntry.RemoveUpdateComponent(this);
        }

        public void OnUpdate()
        {
            m_TQSceneManager.OnUpdate();
        }
    }
}

