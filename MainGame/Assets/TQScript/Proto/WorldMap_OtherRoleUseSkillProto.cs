//===================================================
//作    者：北冰洋
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 服务器广播其他角色使用技能消息
/// </summary>
public struct WorldMap_OtherRoleUseSkillProto : IProto
{
    public ushort ProtoCode { get { return 13011; } }
    public string ProtoEnName { get { return "WorldMap_OtherRoleUseSkill"; } }

    public int AttackRoleId; //发起攻击角色Id
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
        public int ReduceHp; //减少HP
        public byte IsCri; //是否暴击
    }

    public byte[] ToArray(bool isChild = false)
    {
        MMO_MemoryStream ms = null;
        
        if (!isChild)
        {
            ms = GameEntry.Socket.SocketSendMS;
            ms.SetLength(0);
            ms.WriteUShort(ProtoCode);
        }
        else
        {
            ms = GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
            ms.SetLength(0);
        }

        ms.WriteInt(AttackRoleId);
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
            ms.WriteInt(item.ReduceHp);
            ms.WriteByte(item.IsCri);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_OtherRoleUseSkillProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_OtherRoleUseSkillProto proto = new WorldMap_OtherRoleUseSkillProto();

        MMO_MemoryStream ms = null;
        if (!isChild)
        {
            ms = GameEntry.Socket.SocketSendMS;
        }
        else
        {
            ms = GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
        }
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.AttackRoleId = ms.ReadInt();
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
            _Item.ReduceHp = ms.ReadInt();
            _Item.IsCri = (byte)ms.ReadByte();
            proto.ItemList.Add(_Item);
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}