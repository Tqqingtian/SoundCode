//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器广播当前场景角色
/// </summary>
public struct WorldMap_InitRoleProto : IProto
{
    public ushort ProtoCode { get { return 13007; } }
    public string ProtoEnName { get { return "WorldMap_InitRole"; } }

    public int RoleCount; //角色数量
    public List<RoleItem> ItemList; //角色列表

    [Serializable]
    /// <summary>
    /// 角色列表
    /// </summary>
    public struct RoleItem
    {
        public int RoleId; //角色编号
        public string RoleNickName; //角色昵称
        public int RoleLevel; //角色等级
        public int RoleMaxHP; //最大血量
        public int RoleCurrHP; //当前血量
        public int RoleMaxMP; //最大魔法
        public int RoleCurrMP; //当前魔法
        public int RoleJobId; //角色职业编号
        public float RolePosX; //角色坐标X
        public float RolePosY; //角色坐标Y
        public float RolePosZ; //角色坐标Z
        public float RoleYAngle; //角色Y轴旋转
    }

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleCount);
        for (int i = 0; i < RoleCount; i++)
        {
            var item = ItemList[i];
            ms.WriteInt(item.RoleId);
            ms.WriteUTF8String(item.RoleNickName);
            ms.WriteInt(item.RoleLevel);
            ms.WriteInt(item.RoleMaxHP);
            ms.WriteInt(item.RoleCurrHP);
            ms.WriteInt(item.RoleMaxMP);
            ms.WriteInt(item.RoleCurrMP);
            ms.WriteInt(item.RoleJobId);
            ms.WriteFloat(item.RolePosX);
            ms.WriteFloat(item.RolePosY);
            ms.WriteFloat(item.RolePosZ);
            ms.WriteFloat(item.RoleYAngle);
        }

        return ms.ToArray();
    }

    public static WorldMap_InitRoleProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_InitRoleProto proto = new WorldMap_InitRoleProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleCount = ms.ReadInt();
        proto.ItemList = new List<RoleItem>();
        for (int i = 0; i < proto.RoleCount; i++)
        {
            RoleItem _Item = new RoleItem();
            _Item.RoleId = ms.ReadInt();
            _Item.RoleNickName = ms.ReadUTF8String();
            _Item.RoleLevel = ms.ReadInt();
            _Item.RoleMaxHP = ms.ReadInt();
            _Item.RoleCurrHP = ms.ReadInt();
            _Item.RoleMaxMP = ms.ReadInt();
            _Item.RoleCurrMP = ms.ReadInt();
            _Item.RoleJobId = ms.ReadInt();
            _Item.RolePosX = ms.ReadFloat();
            _Item.RolePosY = ms.ReadFloat();
            _Item.RolePosZ = ms.ReadFloat();
            _Item.RoleYAngle = ms.ReadFloat();
            proto.ItemList.Add(_Item);
        }

        return proto;
    }
}