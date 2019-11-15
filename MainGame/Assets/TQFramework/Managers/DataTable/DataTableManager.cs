using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;


namespace TQ
{
    public class DataTableManager : ManagerBase
    {
        public DataTableManager()
        {
            //每个都要new
            InitDBModel();
        }
        /// <summary>
        /// 总共需要加载的表格数量
        /// </summary>
        public int TotalTableCount = 0;

        /// <summary>
        /// 当前需要加载的表格数量
        /// </summary>
        public int CurrLoadTableCount = 0;

        /// <summary>
        /// 系统码
        /// </summary>
        public Sys_CodeDBModel Sys_CodeDBModel { get; private set; }
        /// <summary>
        /// 特效
        /// </summary>
        public Sys_EffectDBModel Sys_EffectDBModel { get; private set; }
        /// <summary>
        /// 少个本地语言表
        /// </summary>
        public LocalizationDBModel LocalizationDBModel { get; private set; }
        /// <summary>
        /// 预制件
        /// </summary>
        public Sys_PrefabDBModel Sys_PrefabDBModel { get; private set; }
        /// <summary>
        /// 音效表
        /// </summary>
        public Sys_SoundDBModel Sys_SoundDBModel { get; private set; }

        /// <summary>
        /// 故事音效
        /// </summary>
        public Sys_StorySoundDBModel Sys_StorySoundDBModel { get; private set; }
        /// <summary>
        /// ui窗口表
        /// </summary>
        public Sys_UIFormDBModel Sys_UIFormDBModel { get; private set; }

        public Sys_UIItemDBModel Sys_UIItemDBModel { get; private set; }

        /// <summary>
        /// 章表
        /// </summary>
        public ChapterDBModel ChapterDBModel {  get;  private set;}

        public JobDBModel JobDBModel { get; private set; }
        /// <summary>
        /// 关卡表
        /// </summary>
        public GameLevelDBModel GameLevelDBModel { get; private set; }
        /// <summary>
        /// 任务表
        /// </summary>
        public TaskDBModel TaskDBModel { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public Sys_SceneDBModel Sys_SceneDBModel { get; private set; }

        public Sys_SceneDatailDBModel Sys_SceneDatailDBModel { get; internal set; }

        /// <summary>
        /// 初始化DBModel
        /// </summary>
        private void InitDBModel()
        {
            Sys_CodeDBModel = new Sys_CodeDBModel();
            Sys_EffectDBModel = new Sys_EffectDBModel();
            LocalizationDBModel = new LocalizationDBModel();
            Sys_PrefabDBModel = new Sys_PrefabDBModel();
            Sys_SoundDBModel = new Sys_SoundDBModel();
            Sys_StorySoundDBModel = new Sys_StorySoundDBModel();
            Sys_UIFormDBModel = new Sys_UIFormDBModel();

            Sys_UIItemDBModel = new Sys_UIItemDBModel();

            TaskDBModel = new TaskDBModel();
            Sys_SceneDBModel = new Sys_SceneDBModel();
            Sys_SceneDatailDBModel = new Sys_SceneDatailDBModel();

            ChapterDBModel = new ChapterDBModel();
            GameLevelDBModel = new GameLevelDBModel();

            JobDBModel = new JobDBModel();
        }
        /// <summary>
        /// 加载表格
        /// </summary>
        public void LoadDataTable()
        {
            //每个都要loaddata
            Sys_CodeDBModel.LoadData();
            Sys_EffectDBModel.LoadData();
            LocalizationDBModel.LoadData();
            Sys_PrefabDBModel.LoadData();
            Sys_SoundDBModel.LoadData();
            Sys_StorySoundDBModel.LoadData();
            Sys_UIFormDBModel.LoadData();

            Sys_UIItemDBModel.LoadData();

            Sys_SceneDBModel.LoadData();
            Sys_SceneDatailDBModel.LoadData();

            ChapterDBModel.LoadData();
            GameLevelDBModel.LoadData();
            TaskDBModel.LoadData();

            JobDBModel.LoadData();

            //所有加载表格完毕（c#里的）
            //GameEntry.Event.CommonEvent.Dispatch(SysEventId.LoadDataTableComplete);
        }

        /// <summary>
        /// 表格资源包
        /// </summary>
        public AssetBundle m_DataTabkeBundle;

        /// <summary>
        /// 异步加载表格
        /// </summary>
        public void LoadDataTableAsync()
        {
#if DISABLE_ASSETBUNDLE
            //Task.Factory.StartNew(LoadDataTable);
            LoadDataTable();
#else
            GameEntry.Resource.ResourceLoaderManager.LoadAssetBundle("download/datatable.assetbundle", onComplete: (AssetBundle bundle) =>
              {
                  m_DataTabkeBundle = bundle;
                  LoadDataTable();
              });
#endif

        }

        /// <summary>
        /// 获取表格字节数组
        /// </summary>
        /// <param name="dataTableName"></param>
        /// <param name="onComplete"></param>
        public void GetDataTableBunffer(string tableName, Action<byte[]> onComplete)
        {

#if DISABLE_ASSETBUNDLE
            GameEntry.Time.Yield(() =>
            {
                byte[] buffer = IOUtil.GetFileBuffer(string.Format("{0}/download/DataTable/{1}.bytes", GameEntry.Resource.LocalFilePath, tableName));
                if (onComplete != null)
                {
                    onComplete(buffer);
                }
            });
             
#else
            GameEntry.Resource.ResourceLoaderManager.LoadAsset(GameEntry.Resource.GetLastPathName(tableName), m_DataTabkeBundle, onComplete: (UnityEngine.Object obj) =>
                {
                    TextAsset asset = obj as TextAsset;
                    if (onComplete != null)
                    {
                        onComplete(asset.bytes);
                    }
                });
#endif
        }

        public void Clear()
        {
            //每个都要Clear
            Sys_CodeDBModel.Clear();
            Sys_EffectDBModel.Clear();
            LocalizationDBModel.Clear();
            Sys_PrefabDBModel.Clear();
            Sys_StorySoundDBModel.Clear();
            Sys_StorySoundDBModel.Clear();
            Sys_UIFormDBModel.Clear();

            Sys_UIItemDBModel.Clear();

            Sys_SceneDBModel.Clear();
            Sys_SceneDatailDBModel.Clear();

            ChapterDBModel.Clear();
            GameLevelDBModel.Clear();
            TaskDBModel.Clear();

            JobDBModel.Clear();
        }


    }
}

