/// <summary>
/// 类名 : RoleDBModel
/// 作者 : 北京-边涯
/// 说明 : 
/// 创建日期 : 2019-10-25 00:04:59
/// </summary>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

using Mmcoy.Framework.AbstractBase;

/// <summary>
/// DBModel
/// </summary>
public partial class RoleDBModel : MFAbstractSQLDBModel<RoleEntity>
{
    #region RoleDBModel 私有构造
    /// <summary>
    /// 私有构造
    /// </summary>
    private RoleDBModel()
    {

    }
    #endregion

    #region 单例
    private static object lock_object = new object();
    private static RoleDBModel instance = null;
    public static RoleDBModel Instance
    {
        get
        {
            if (instance == null)
            {
                lock (lock_object)
                {
                    if (instance == null)
                    {
                        instance = new RoleDBModel();
                    }
                }
            }
            return instance;
        }
    }
    #endregion

    #region 实现基类的属性和方法

    #region ConnectionString 数据库连接字符串
    /// <summary>
    /// 数据库连接字符串
    /// </summary>
    protected override string ConnectionString
    {
        get { return DBConn.WorldTheAutumn_DBGameServer; }
    }
    #endregion

    #region TableName 表名
    /// <summary>
    /// 表名
    /// </summary>
    protected override string TableName
    {
        get { return "Role"; }
    }
    #endregion

    #region ColumnList 列名集合
    private IList<string> _ColumnList;
    /// <summary>
    /// 列名集合
    /// </summary>
    protected override IList<string> ColumnList
    {
        get
        {
            if (_ColumnList == null)
            {
                _ColumnList = new List<string> { "Id", "Status", "AccountId", "JobId", "NickName", "Level", "Exp", "TotalRechargeMoney", "Money", "Gold", "MaxHP", "MaxMP", "CurrHP", "CurrMP", "ToSpeed", "WeaponDamageMin", "WeaponDamageMax", "AttackNumber", "StrikePower", "PiercingPower", "MagicPower", "ChoppingDefense", "PuncturDefense", "MagicDefense", "LastPassGameLevelId", "LastInWorldMapId", "LastInWorldMapPos", "CreateTime", "UpdateTime", "Equip_Weapon", "Equip_Pants", "Equip_Clothes", "Equip_Belt", "Equip_Cuff", "Equip_Necklace", "Equip_Shoe", "Equip_Ring" };
            }
            return _ColumnList;
        }
    }
    #endregion

    #region ValueParas 转换参数
    /// <summary>
    /// 转换参数
    /// </summary>
    /// <param name="entity"></param>
    /// <returns></returns>
    protected override SqlParameter[] ValueParas(RoleEntity entity)
    {
        SqlParameter[] parameters = new SqlParameter[] {
                new SqlParameter("@Id", entity.Id) { DbType = DbType.Int32 },
                new SqlParameter("@Status", entity.Status) { DbType = DbType.Byte },
                new SqlParameter("@AccountId", entity.AccountId) { DbType = DbType.Int32 },
                new SqlParameter("@JobId", entity.JobId) { DbType = DbType.Int32 },
                new SqlParameter("@NickName", entity.NickName) { DbType = DbType.String },
                new SqlParameter("@Level", entity.Level) { DbType = DbType.Int32 },
                new SqlParameter("@Exp", entity.Exp) { DbType = DbType.Int32 },
                new SqlParameter("@TotalRechargeMoney", entity.TotalRechargeMoney) { DbType = DbType.Int32 },
                new SqlParameter("@Money", entity.Money) { DbType = DbType.Int32 },
                new SqlParameter("@Gold", entity.Gold) { DbType = DbType.Int32 },
                new SqlParameter("@MaxHP", entity.MaxHP) { DbType = DbType.Int32 },
                new SqlParameter("@MaxMP", entity.MaxMP) { DbType = DbType.Int32 },
                new SqlParameter("@CurrHP", entity.CurrHP) { DbType = DbType.Int32 },
                new SqlParameter("@CurrMP", entity.CurrMP) { DbType = DbType.Int32 },
                new SqlParameter("@ToSpeed", entity.ToSpeed) { DbType = DbType.Int32 },
                new SqlParameter("@WeaponDamageMin", entity.WeaponDamageMin) { DbType = DbType.Int32 },
                new SqlParameter("@WeaponDamageMax", entity.WeaponDamageMax) { DbType = DbType.Int32 },
                new SqlParameter("@AttackNumber", entity.AttackNumber) { DbType = DbType.Int32 },
                new SqlParameter("@StrikePower", entity.StrikePower) { DbType = DbType.Int32 },
                new SqlParameter("@PiercingPower", entity.PiercingPower) { DbType = DbType.Int32 },
                new SqlParameter("@MagicPower", entity.MagicPower) { DbType = DbType.Int32 },
                new SqlParameter("@ChoppingDefense", entity.ChoppingDefense) { DbType = DbType.Int32 },
                new SqlParameter("@PuncturDefense", entity.PuncturDefense) { DbType = DbType.Int32 },
                new SqlParameter("@MagicDefense", entity.MagicDefense) { DbType = DbType.Int32 },
                new SqlParameter("@LastPassGameLevelId", entity.LastPassGameLevelId) { DbType = DbType.Int32 },
                new SqlParameter("@LastInWorldMapId", entity.LastInWorldMapId) { DbType = DbType.Int32 },
                new SqlParameter("@LastInWorldMapPos", entity.LastInWorldMapPos) { DbType = DbType.String },
                new SqlParameter("@CreateTime", entity.CreateTime) { DbType = DbType.DateTime },
                new SqlParameter("@UpdateTime", entity.UpdateTime) { DbType = DbType.DateTime },
                new SqlParameter("@Equip_Weapon", entity.Equip_Weapon) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Pants", entity.Equip_Pants) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Clothes", entity.Equip_Clothes) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Belt", entity.Equip_Belt) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Cuff", entity.Equip_Cuff) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Necklace", entity.Equip_Necklace) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Shoe", entity.Equip_Shoe) { DbType = DbType.Int32 },
                new SqlParameter("@Equip_Ring", entity.Equip_Ring) { DbType = DbType.Int32 },
                new SqlParameter("@RetMsg", SqlDbType.NVarChar, 255),
                new SqlParameter("@ReturnValue", SqlDbType.Int)
            };
        return parameters;
    }
    #endregion

    #region GetEntitySelfProperty 封装对象
    /// <summary>
    /// 封装对象
    /// </summary>
    /// <param name="reader"></param>
    /// <param name="table"></param>
    /// <returns></returns>
    protected override RoleEntity GetEntitySelfProperty(IDataReader reader, DataTable table)
    {
        RoleEntity entity = new RoleEntity();
        foreach (DataRow row in table.Rows)
        {
            var colName = row.Field<string>(0);
            if (reader[colName] is DBNull)
                continue;
            switch (colName.ToLower())
            {
                case "id":
                    if (!(reader["Id"] is DBNull))
                        entity.Id = Convert.ToInt32(reader["Id"]);
                    break;
                case "status":
                    if (!(reader["Status"] is DBNull))
                        entity.Status = (EnumEntityStatus)Convert.ToInt32(reader["Status"]);
                    break;
                case "accountid":
                    if (!(reader["AccountId"] is DBNull))
                        entity.AccountId = Convert.ToInt32(reader["AccountId"]);
                    break;
                case "jobid":
                    if (!(reader["JobId"] is DBNull))
                        entity.JobId = Convert.ToInt32(reader["JobId"]);
                    break;
                case "nickname":
                    if (!(reader["NickName"] is DBNull))
                        entity.NickName = Convert.ToString(reader["NickName"]);
                    break;
                case "level":
                    if (!(reader["Level"] is DBNull))
                        entity.Level = Convert.ToInt32(reader["Level"]);
                    break;
                case "exp":
                    if (!(reader["Exp"] is DBNull))
                        entity.Exp = Convert.ToInt32(reader["Exp"]);
                    break;
                case "totalrechargemoney":
                    if (!(reader["TotalRechargeMoney"] is DBNull))
                        entity.TotalRechargeMoney = Convert.ToInt32(reader["TotalRechargeMoney"]);
                    break;
                case "money":
                    if (!(reader["Money"] is DBNull))
                        entity.Money = Convert.ToInt32(reader["Money"]);
                    break;
                case "gold":
                    if (!(reader["Gold"] is DBNull))
                        entity.Gold = Convert.ToInt32(reader["Gold"]);
                    break;
                case "maxhp":
                    if (!(reader["MaxHP"] is DBNull))
                        entity.MaxHP = Convert.ToInt32(reader["MaxHP"]);
                    break;
                case "maxmp":
                    if (!(reader["MaxMP"] is DBNull))
                        entity.MaxMP = Convert.ToInt32(reader["MaxMP"]);
                    break;
                case "currhp":
                    if (!(reader["CurrHP"] is DBNull))
                        entity.CurrHP = Convert.ToInt32(reader["CurrHP"]);
                    break;
                case "currmp":
                    if (!(reader["CurrMP"] is DBNull))
                        entity.CurrMP = Convert.ToInt32(reader["CurrMP"]);
                    break;
                case "tospeed":
                    if (!(reader["ToSpeed"] is DBNull))
                        entity.ToSpeed = Convert.ToInt32(reader["ToSpeed"]);
                    break;
                case "weapondamagemin":
                    if (!(reader["WeaponDamageMin"] is DBNull))
                        entity.WeaponDamageMin = Convert.ToInt32(reader["WeaponDamageMin"]);
                    break;
                case "weapondamagemax":
                    if (!(reader["WeaponDamageMax"] is DBNull))
                        entity.WeaponDamageMax = Convert.ToInt32(reader["WeaponDamageMax"]);
                    break;
                case "attacknumber":
                    if (!(reader["AttackNumber"] is DBNull))
                        entity.AttackNumber = Convert.ToInt32(reader["AttackNumber"]);
                    break;
                case "strikepower":
                    if (!(reader["StrikePower"] is DBNull))
                        entity.StrikePower = Convert.ToInt32(reader["StrikePower"]);
                    break;
                case "piercingpower":
                    if (!(reader["PiercingPower"] is DBNull))
                        entity.PiercingPower = Convert.ToInt32(reader["PiercingPower"]);
                    break;
                case "magicpower":
                    if (!(reader["MagicPower"] is DBNull))
                        entity.MagicPower = Convert.ToInt32(reader["MagicPower"]);
                    break;
                case "choppingdefense":
                    if (!(reader["ChoppingDefense"] is DBNull))
                        entity.ChoppingDefense = Convert.ToInt32(reader["ChoppingDefense"]);
                    break;
                case "puncturdefense":
                    if (!(reader["PuncturDefense"] is DBNull))
                        entity.PuncturDefense = Convert.ToInt32(reader["PuncturDefense"]);
                    break;
                case "magicdefense":
                    if (!(reader["MagicDefense"] is DBNull))
                        entity.MagicDefense = Convert.ToInt32(reader["MagicDefense"]);
                    break;
                case "lastpassgamelevelid":
                    if (!(reader["LastPassGameLevelId"] is DBNull))
                        entity.LastPassGameLevelId = Convert.ToInt32(reader["LastPassGameLevelId"]);
                    break;
                case "lastinworldmapid":
                    if (!(reader["LastInWorldMapId"] is DBNull))
                        entity.LastInWorldMapId = Convert.ToInt32(reader["LastInWorldMapId"]);
                    break;
                case "lastinworldmappos":
                    if (!(reader["LastInWorldMapPos"] is DBNull))
                        entity.LastInWorldMapPos = Convert.ToString(reader["LastInWorldMapPos"]);
                    break;
                case "createtime":
                    if (!(reader["CreateTime"] is DBNull))
                        entity.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                    break;
                case "updatetime":
                    if (!(reader["UpdateTime"] is DBNull))
                        entity.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);
                    break;
                case "equip_weapon":
                    if (!(reader["Equip_Weapon"] is DBNull))
                        entity.Equip_Weapon = Convert.ToInt32(reader["Equip_Weapon"]);
                    break;
                case "equip_pants":
                    if (!(reader["Equip_Pants"] is DBNull))
                        entity.Equip_Pants = Convert.ToInt32(reader["Equip_Pants"]);
                    break;
                case "equip_clothes":
                    if (!(reader["Equip_Clothes"] is DBNull))
                        entity.Equip_Clothes = Convert.ToInt32(reader["Equip_Clothes"]);
                    break;
                case "equip_belt":
                    if (!(reader["Equip_Belt"] is DBNull))
                        entity.Equip_Belt = Convert.ToInt32(reader["Equip_Belt"]);
                    break;
                case "equip_cuff":
                    if (!(reader["Equip_Cuff"] is DBNull))
                        entity.Equip_Cuff = Convert.ToInt32(reader["Equip_Cuff"]);
                    break;
                case "equip_necklace":
                    if (!(reader["Equip_Necklace"] is DBNull))
                        entity.Equip_Necklace = Convert.ToInt32(reader["Equip_Necklace"]);
                    break;
                case "equip_shoe":
                    if (!(reader["Equip_Shoe"] is DBNull))
                        entity.Equip_Shoe = Convert.ToInt32(reader["Equip_Shoe"]);
                    break;
                case "equip_ring":
                    if (!(reader["Equip_Ring"] is DBNull))
                        entity.Equip_Ring = Convert.ToInt32(reader["Equip_Ring"]);
                    break;
            }
        }
        return entity;
    }
    #endregion

    #endregion
}
