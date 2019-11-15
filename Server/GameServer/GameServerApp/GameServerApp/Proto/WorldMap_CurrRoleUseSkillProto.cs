//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送角色使用技能消息
/// </summary>
public struct WorldMap_CurrRoleUseSkillProto : IProto
{
    public ushort ProtoCode { get { return 13010; } }
    public string ProtoEnName { get { return "WorldMap_CurrRoleUseSkill"; } }

    public int SkillId; //技能编号
    public int SkillLevel; //技能等级
    public float RolePosX; //角色坐标X
    public float RolePosY; //角色坐标Y
    public float RolePosZ; //角色坐标Z
    public float RoleYAngle; //角色Y轴旋转
    public int BeAttackCount; //被攻击者数量
    public List<BeAttackItem> ItemList; //被攻击者

    [Serializable]
    /// <summary>
    /// 被攻击者
    /// </summary>
    public struct BeAttackItem
    {
        public int BeAttackRoleId; //被攻击者编号
    }

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(SkillId);
        ms.WriteInt(SkillLevel);
        ms.WriteFloat(RolePosX);
        ms.WriteFloat(RolePosY);
        ms.WriteFloat(RolePosZ);
        ms.WriteFloat(RoleYAngle);
        ms.WriteInt(BeAttackCount);
        for (int i = 0; i < BeAttackCount; i++)
        {
            var item = ItemList[i];
            ms.WriteInt(item.BeAttackRoleId);
        }

        return ms.ToArray();
    }

    public static WorldMap_CurrRoleUseSkillProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_CurrRoleUseSkillProto proto = new WorldMap_CurrRoleUseSkillProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.SkillId = ms.ReadInt();
        proto.SkillLevel = ms.ReadInt();
        proto.RolePosX = ms.ReadFloat();
        proto.RolePosY = ms.ReadFloat();
        proto.RolePosZ = ms.ReadFloat();
        proto.RoleYAngle = ms.ReadFloat();
        proto.BeAttackCount = ms.ReadInt();
        proto.ItemList = new List<BeAttackItem>();
        for (int i = 0; i < proto.BeAttackCount; i++)
        {
            BeAttackItem _Item = new BeAttackItem();
            _Item.BeAttackRoleId = ms.ReadInt();
            proto.ItemList.Add(_Item);
        }

        return proto;
    }
}