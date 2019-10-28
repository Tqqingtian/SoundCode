using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 场景组件
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
        /// 加载场景
        /// </summary>
        /// <param name="sceneId">场景id</param>
        /// <param name="showLoadingForm">是否显示ui</param>
        /// <param name="onComplete">完成回调</param>
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

