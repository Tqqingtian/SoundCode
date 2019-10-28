using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    /// <summary>
    /// Ԥ��������
    /// </summary>
    public class ProcedurePreload : ProcedureBase
    {
        /// <summary>
        /// Ŀ�����
        /// </summary>
        private float m_TargerProgress = 0;

        /// <summary>
        /// ��ǰ��Ϸ����
        /// </summary>
        private float m_CurrProgress = 0;

        /// <summary>
        /// Ԥ���ز���
        /// </summary>
        private BaseParams m_PreloadParams;


        public override void OnEnter()
        {
            base.OnEnter();
            GameEntry.Log(LogCategory.Procedure, "OnEnter ProcedurePreload");

            GameEntry.Event.CommonEvent.AddEventListener(SysEventId.LoadDataTableComplete, OnLoadDataTableComplete);
            GameEntry.Event.CommonEvent.AddEventListener(SysEventId.LoadOneDataTableComplete, OnLoadOneDataTableComplete);
            GameEntry.Event.CommonEvent.AddEventListener(SysEventId.LoadLuaDataTableComplete, OnLoadLuaDataTableComplete);

            GameEntry.Log(LogCategory.Normal, "Ԥ���ؿ�ʼ");
            m_PreloadParams = GameEntry.Pool.DequeueClassObject<BaseParams>();
            m_PreloadParams.Reset();
            GameEntry.Event.CommonEvent.Dispatch(SysEventId.PreloadBegin);

            m_TargerProgress = 98;
#if !DISABLE_ASSETBUNDLE
             GameEntry.Resource.InitAssetInfo();
#endif

            GameEntry.DataTable.LoadDataTableAsync();

        }


        public override void OnUpdate()
        {
            base.OnUpdate();

            if (m_CurrProgress < m_TargerProgress)
            {
                m_CurrProgress = m_CurrProgress + Time.deltaTime * 200;//����ʵ��������ڽ���
                m_PreloadParams.FloatParam1 = m_CurrProgress;
                GameEntry.Event.CommonEvent.Dispatch(SysEventId.PreloadUpdate, m_PreloadParams);
           
            }
            else if (m_CurrProgress >= 100)
            {
                m_CurrProgress = 100;
                m_PreloadParams.FloatParam1 = m_CurrProgress;
                GameEntry.Event.CommonEvent.Dispatch(SysEventId.PreloadUpdate, m_PreloadParams);

                GameEntry.Log(LogCategory.Normal, "Ԥ�������");
                GameEntry.Event.CommonEvent.Dispatch(SysEventId.PreloadComplete);
                GameEntry.Pool.EnqueueClassObject(m_PreloadParams);

                GameEntry.Procedure.ChangeState(ProcedureState.LogOn);
            }
        }

        public override void OnLeave()
        {
            base.OnLeave();
            GameEntry.Log(LogCategory.Procedure, "OnLeave ProcedurePreload");
            GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.LoadDataTableComplete, OnLoadDataTableComplete);
            GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.LoadOneDataTableComplete, OnLoadOneDataTableComplete);
            
            GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.LoadLuaDataTableComplete, OnLoadLuaDataTableComplete);
        }

 
        /// <summary>
        /// ���ص�һ�����
        /// </summary>
        /// <param name="userData"></param>
        private void OnLoadOneDataTableComplete(object userData)
        {
            GameEntry.DataTable.DataTableManager.CurrLoadTableCount++;
            if (GameEntry.DataTable.DataTableManager.CurrLoadTableCount==GameEntry.DataTable.DataTableManager.TotalTableCount)
            {
                GameEntry.Event.CommonEvent.Dispatch(SysEventId.LoadDataTableComplete);
            }
        }

        /// <summary>
        /// �������б����
        /// </summary>
        /// <param name="userData"></param>
        private void OnLoadDataTableComplete(object userData)
        {
            GameEntry.Log(LogCategory.Normal, "��������c#�����");

            //List<ChapterEntity> lit = GameEntry.DataTable.DataTableManager.ChapterDBModel.GetList();
            //for (int i = 0; i < lit.Count; i++)
            //{
            //    Debug.Log(lit[i].ChapterName);
            //}
            GameEntry.Lua.LoadDataTable("Job", (MMO_MemoryStream ms) => {


            });

            //��ʼ��lua
            GameEntry.Lua.Init();

        }

        private void OnLoadLuaDataTableComplete(object userData)
        {
            GameEntry.Log(LogCategory.Normal, "�������е�lua������");
            LoadShader();
            
        }

        private void LoadShader()
        {
#if DISABLE_ASSETBUNDLE
            m_TargerProgress = 100;
#else
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle(ConstDefine.CusShadersAssetBundlePath, onComplete: (AssetBundle bundle) =>
            {
                bundle.LoadAllAssets();
                
                for (int i = 0; i < 5; i++)
                {
                    Shader.WarmupAllShaders();
                }
                GameEntry.Log(LogCategory.Normal, "������Դ�����Զ����shader���");
                m_TargerProgress = 100;
            });
#endif
        }
        
    }
}

