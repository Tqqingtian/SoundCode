using GameServerApp.Common;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;

public class DataTableManager : Singleton<DataTableManager>, IDisposable
{
    public DataTableManager()
    {
        InitDBModel();
    }

    /// <summary>
    /// 章表
    /// </summary>
    public ChapterDBModel ChapterDBModel { get; private set; }

    /// <summary>
    /// 关卡表
    /// </summary>
    public GameLevelDBModel GameLevelDBModel { get; private set; }

    public TaskDBModel TaskDBModel { get; private set; }
    public JobDBModel JobDBModel { get; private set; }
    public JobLevelDBModel JobLevelDBModel { get; private set; }
    public ShopDBModel ShopDBModel { get; private set; }
    public EquipDBModel EquipDBModel { get; private set; }
    public ItemDBModel ItemDBModel { get; private set; }
    public MaterialDBModel MaterialDBModel { get; private set; }
    public WorldMapDBModel WorldMapDBModel { get; private set; }
    public SkillDBModel SkillDBModel { get; private set; }
    public SkillLevelDBModel SkillLevelDBModel { get; private set; }

    /// <summary>
    /// 初始化DBModel
    /// </summary>
    private void InitDBModel()
    {
        //每个表都new

        ChapterDBModel = new ChapterDBModel();
        GameLevelDBModel = new GameLevelDBModel();
        TaskDBModel = new TaskDBModel();
        JobDBModel = new JobDBModel();
        JobLevelDBModel = new JobLevelDBModel();
        ShopDBModel = new ShopDBModel();
        EquipDBModel = new EquipDBModel();
        ItemDBModel = new ItemDBModel();
        MaterialDBModel = new MaterialDBModel();
        WorldMapDBModel = new WorldMapDBModel();
        SkillDBModel = new SkillDBModel();
        SkillLevelDBModel = new SkillLevelDBModel();
    }

    /// <summary>
    /// 加载表格
    /// </summary>
    public void LoadDataTable()
    {
        //每个表都 LoadData
        ChapterDBModel.LoadData();
        GameLevelDBModel.LoadData();
        TaskDBModel.LoadData();
        JobDBModel.LoadData();
        JobLevelDBModel.LoadData();
        ShopDBModel.LoadData();
        EquipDBModel.LoadData();
        ItemDBModel.LoadData();
        MaterialDBModel.LoadData();
        WorldMapDBModel.LoadData();
        SkillDBModel.LoadData();
        SkillLevelDBModel.LoadData();
    }
}