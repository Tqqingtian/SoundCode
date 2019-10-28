//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器广播其他角色移动消息
/// </summary>
public struct WorldMap_OtherRoleMoveProto : IProto
{
    public ushort ProtoCode { get { return 13009; } }
    public string ProtoEnName { get { return "WorldMap_OtherRoleMove"; } }

    public int RoleId; //角色编号
    public float TargetPosX; //目标坐标X
    public float TargetPosY; //目标坐标Y
    public float TargetPosZ; //目标坐标Z
    public long ServerTime; //客户端发包时的服务器时间
    public int NeedTime; //客户端移动所需时间

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleId);
        ms.WriteFloat(TargetPosX);
        ms.WriteFloat(TargetPosY);
        ms.WriteFloat(TargetPosZ);
        ms.WriteLong(ServerTime);
        ms.WriteInt(NeedTime);

        return ms.ToArray();
    }

    public static WorldMap_OtherRoleMoveProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_OtherRoleMoveProto proto = new WorldMap_OtherRoleMoveProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleId = ms.ReadInt();
        proto.TargetPosX = ms.ReadFloat();
        proto.TargetPosY = ms.ReadFloat();
        proto.TargetPosZ = ms.ReadFloat();
        proto.ServerTime = ms.ReadLong();
        proto.NeedTime = ms.ReadInt();

        return proto;
    }
}