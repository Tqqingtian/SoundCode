//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器广播其他角色进入场景消息
/// </summary>
public struct WorldMap_OtherRoleEnterProto : IProto
{
    public ushort ProtoCode { get { return 13005; } }
    public string ProtoEnName { get { return "WorldMap_OtherRoleEnter"; } }

    public int RoleId; //角色编号
    public string RoleNickName; //角色昵称
    public int RoleLevel; //角色等级
    public int RoleJobId; //角色职业编号
    public int RoleCurrMP; //当前魔法
    public int RoleMaxMP; //最大魔法
    public int RoleCurrHP; //当前血量
    public int RoleMaxHP; //最大血量
    public float RolePosX; //角色坐标X
    public float RolePosY; //角色坐标Y
    public float RolePosZ; //角色坐标Z
    public float RoleYAngle; //角色Y轴旋转

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleId);
        ms.WriteUTF8String(RoleNickName);
        ms.WriteInt(RoleLevel);
        ms.WriteInt(RoleJobId);
        ms.WriteInt(RoleCurrMP);
        ms.WriteInt(RoleMaxMP);
        ms.WriteInt(RoleCurrHP);
        ms.WriteInt(RoleMaxHP);
        ms.WriteFloat(RolePosX);
        ms.WriteFloat(RolePosY);
        ms.WriteFloat(RolePosZ);
        ms.WriteFloat(RoleYAngle);

        return ms.ToArray();
    }

    public static WorldMap_OtherRoleEnterProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_OtherRoleEnterProto proto = new WorldMap_OtherRoleEnterProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleId = ms.ReadInt();
        proto.RoleNickName = ms.ReadUTF8String();
        proto.RoleLevel = ms.ReadInt();
        proto.RoleJobId = ms.ReadInt();
        proto.RoleCurrMP = ms.ReadInt();
        proto.RoleMaxMP = ms.ReadInt();
        proto.RoleCurrHP = ms.ReadInt();
        proto.RoleMaxHP = ms.ReadInt();
        proto.RolePosX = ms.ReadFloat();
        proto.RolePosY = ms.ReadFloat();
        proto.RolePosZ = ms.ReadFloat();
        proto.RoleYAngle = ms.ReadFloat();

        return proto;
    }
}