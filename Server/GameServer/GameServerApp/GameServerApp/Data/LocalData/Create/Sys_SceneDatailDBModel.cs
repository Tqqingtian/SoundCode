
//===================================================
//创建时间：2019-11-15 00:52:52
//备    注：此代码为工具生成 请勿手工修改
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// Sys_SceneDatail数据管理
/// </summary>
public partial class Sys_SceneDatailDBModel : DataTableDBModelBase<Sys_SceneDatailDBModel, Sys_SceneDatailEntity>
{
    /// <summary>
    /// 文件名称
    /// </summary>
    public override string DataTableName { get { return "Sys_SceneDatail"; } }

    /// <summary>
    /// 加载列表
    /// </summary>
    protected override void LoadList(MMO_MemoryStream ms)
    {
        int rows = ms.ReadInt();
        int columns = ms.ReadInt();

        for (int i = 0; i < rows; i++)
        {
            Sys_SceneDatailEntity entity = new Sys_SceneDatailEntity();
            entity.Id = ms.ReadInt();
            entity.SceneId = ms.ReadInt();
            entity.ScenePath = ms.ReadUTF8String();
            entity.SceneGrade = ms.ReadInt();

            m_List.Add(entity);
            m_Dic[entity.Id] = entity;
        }
    }
}