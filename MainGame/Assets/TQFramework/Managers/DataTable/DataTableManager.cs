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
            //ÿ����Ҫnew
            InitDBModel();
        }
        /// <summary>
        /// �ܹ���Ҫ���صı������
        /// </summary>
        public int TotalTableCount = 0;

        /// <summary>
        /// ��ǰ��Ҫ���صı������
        /// </summary>
        public int CurrLoadTableCount = 0;

        /// <summary>
        /// ϵͳ��
        /// </summary>
        public Sys_CodeDBModel Sys_CodeDBModel { get; private set; }
        /// <summary>
        /// ��Ч
        /// </summary>
        public Sys_EffectDBModel Sys_EffectDBModel { get; private set; }
        /// <summary>
        /// �ٸ��������Ա�
        /// </summary>
        public LocalizationDBModel LocalizationDBModel { get; private set; }
        /// <summary>
        /// Ԥ�Ƽ�
        /// </summary>
        public Sys_PrefabDBModel Sys_PrefabDBModel { get; private set; }
        /// <summary>
        /// ��Ч��
        /// </summary>
        public Sys_SoundDBModel Sys_SoundDBModel { get; private set; }

        /// <summary>
        /// ������Ч
        /// </summary>
        public Sys_StorySoundDBModel Sys_StorySoundDBModel { get; private set; }
        /// <summary>
        /// ui���ڱ�
        /// </summary>
        public Sys_UIFormDBModel Sys_UIFormDBModel { get; private set; }

        public Sys_UIItemDBModel Sys_UIItemDBModel { get; private set; }

        /// <summary>
        /// �±�
        /// </summary>
        public ChapterDBModel ChapterDBModel {  get;  private set;}

        public JobDBModel JobDBModel { get; private set; }
        /// <summary>
        /// �ؿ���
        /// </summary>
        public GameLevelDBModel GameLevelDBModel { get; private set; }
        /// <summary>
        /// �����
        /// </summary>
        public TaskDBModel TaskDBModel { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public Sys_SceneDBModel Sys_SceneDBModel { get; private set; }

        public Sys_SceneDatailDBModel Sys_SceneDatailDBModel { get; internal set; }

        /// <summary>
        /// ��ʼ��DBModel
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
        /// ���ر��
        /// </summary>
        public void LoadDataTable()
        {
            //ÿ����Ҫloaddata
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

            //���м��ر����ϣ�c#��ģ�
            //GameEntry.Event.CommonEvent.Dispatch(SysEventId.LoadDataTableComplete);
        }

        /// <summary>
        /// �����Դ��
        /// </summary>
        public AssetBundle m_DataTabkeBundle;

        /// <summary>
        /// �첽���ر��
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
        /// ��ȡ����ֽ�����
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
            //ÿ����ҪClear
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

