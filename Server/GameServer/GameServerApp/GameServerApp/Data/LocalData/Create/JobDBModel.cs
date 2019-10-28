
//===================================================
//创建时间：2019-10-28 21:32:50
//备    注：此代码为工具生成 请勿手工修改
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// Job数据管理
/// </summary>
public partial class JobDBModel : DataTableDBModelBase<JobDBModel, JobEntity>
{
    /// <summary>
    /// 文件名称
    /// </summary>
    public override string DataTableName { get { return "Job"; } }

    /// <summary>
    /// 加载列表
    /// </summary>
    protected override void LoadList(MMO_MemoryStream ms)
    {
        int rows = ms.ReadInt();
        int columns = ms.ReadInt();

        for (int i = 0; i < rows; i++)
        {
            JobEntity entity = new JobEntity();
            entity.Id = ms.ReadInt();
            entity.Name = ms.ReadUTF8String();
            entity.Desc = ms.ReadUTF8String();
            entity.JobPrefab = ms.ReadUTF8String();
            entity.HP = ms.ReadInt();
            entity.MP = ms.ReadInt();
            entity.ToSpeed = ms.ReadInt();
            entity.WeaponDamageMin = ms.ReadInt();
            entity.WeaponDamageMax = ms.ReadInt();
            entity.AttackNumber = ms.ReadInt();
            entity.StrikePower = ms.ReadInt();
            entity.PiercingPower = ms.ReadInt();
            entity.MagicPower = ms.ReadInt();
            entity.ChoppingDefense = ms.ReadInt();
            entity.PuncturDefense = ms.ReadInt();
            entity.MagicDefense = ms.ReadInt();

            m_List.Add(entity);
            m_Dic[entity.Id] = entity;
        }
    }
}