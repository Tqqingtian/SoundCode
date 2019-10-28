/// <summary>
/// 类名 : RoleEntity
/// 作者 : 北京-边涯
/// 说明 : 
/// 创建日期 : 2019-10-25 00:06:08
/// </summary>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Mmcoy.Framework.AbstractBase;

/// <summary>
/// 
/// </summary>
[Serializable]
public partial class RoleEntity : MFAbstractEntity
{
    #region 重写基类属性
    /// <summary>
    /// 主键
    /// </summary>
    public override int? PKValue
    {
        get
        {
            return this.Id;
        }
        set
        {
            this.Id = value;
        }
    }
    #endregion

    #region 实体属性

    /// <summary>
    /// 编号
    /// </summary>
    public int? Id { get; set; }

    /// <summary>
    /// 状态
    /// </summary>
    public EnumEntityStatus Status { get; set; }

    /// <summary>
    ///所属帐号Id 
    /// </summary>
    public int AccountId { get; set; }

    /// <summary>
    ///职业编号 
    /// </summary>
    public int JobId { get; set; }

    /// <summary>
    ///昵称 
    /// </summary>
    public string NickName { get; set; }

    /// <summary>
    ///等级 
    /// </summary>
    public int Level { get; set; }

    /// <summary>
    ///经验 
    /// </summary>
    public int Exp { get; set; }

    /// <summary>
    ///累积充值 
    /// </summary>
    public int TotalRechargeMoney { get; set; }

    /// <summary>
    ///铜币 
    /// </summary>
    public int Money { get; set; }

    /// <summary>
    ///黄金 
    /// </summary>
    public int Gold { get; set; }

    /// <summary>
    ///最大HP 
    /// </summary>
    public int MaxHP { get; set; }

    /// <summary>
    ///最大MP 
    /// </summary>
    public int MaxMP { get; set; }

    /// <summary>
    ///当前HP 
    /// </summary>
    public int CurrHP { get; set; }

    /// <summary>
    ///当前MP 
    /// </summary>
    public int CurrMP { get; set; }

    /// <summary>
    ///出手速度 
    /// </summary>
    public int ToSpeed { get; set; }

    /// <summary>
    ///最小武器伤害 
    /// </summary>
    public int WeaponDamageMin { get; set; }

    /// <summary>
    ///最大武器伤害 
    /// </summary>
    public int WeaponDamageMax { get; set; }

    /// <summary>
    ///攻击次数 
    /// </summary>
    public int AttackNumber { get; set; }

    /// <summary>
    ///砍劈攻击力 
    /// </summary>
    public int StrikePower { get; set; }

    /// <summary>
    ///穿刺攻击力 
    /// </summary>
    public int PiercingPower { get; set; }

    /// <summary>
    ///魔法攻击力 
    /// </summary>
    public int MagicPower { get; set; }

    /// <summary>
    ///砍劈防御力 
    /// </summary>
    public int ChoppingDefense { get; set; }

    /// <summary>
    ///穿刺防御力 
    /// </summary>
    public int PuncturDefense { get; set; }

    /// <summary>
    ///魔法防御力 
    /// </summary>
    public int MagicDefense { get; set; }

    /// <summary>
    ///最后进入的世界地图编号 
    /// </summary>
    public int LastPassGameLevelId { get; set; }

    /// <summary>
    ///最后进入的世界地图编号 
    /// </summary>
    public int LastInWorldMapId { get; set; }

    /// <summary>
    ///x_y_z_y轴旋转 
    /// </summary>
    public string LastInWorldMapPos { get; set; }

    /// <summary>
    ///创建时间 
    /// </summary>
    public DateTime CreateTime { get; set; }

    /// <summary>
    ///更新时间 
    /// </summary>
    public DateTime UpdateTime { get; set; }

    /// <summary>
    ///穿戴武器 
    /// </summary>
    public int Equip_Weapon { get; set; }

    /// <summary>
    ///穿戴护腿 
    /// </summary>
    public int Equip_Pants { get; set; }

    /// <summary>
    ///穿戴衣服 
    /// </summary>
    public int Equip_Clothes { get; set; }

    /// <summary>
    ///穿戴腰带 
    /// </summary>
    public int Equip_Belt { get; set; }

    /// <summary>
    ///穿戴护腕 
    /// </summary>
    public int Equip_Cuff { get; set; }

    /// <summary>
    ///穿戴项链 
    /// </summary>
    public int Equip_Necklace { get; set; }

    /// <summary>
    ///穿戴鞋 
    /// </summary>
    public int Equip_Shoe { get; set; }

    /// <summary>
    ///穿戴戒指 
    /// </summary>
    public int Equip_Ring { get; set; }

    #endregion
}
