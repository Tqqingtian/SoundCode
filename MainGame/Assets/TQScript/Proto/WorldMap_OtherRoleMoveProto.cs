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

        ms.WriteInt(RoleId);
        ms.WriteFloat(TargetPosX);
        ms.WriteFloat(TargetPosY);
        ms.WriteFloat(TargetPosZ);
        ms.WriteLong(ServerTime);
        ms.WriteInt(NeedTime);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_OtherRoleMoveProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_OtherRoleMoveProto proto = new WorldMap_OtherRoleMoveProto();

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

        proto.RoleId = ms.ReadInt();
        proto.TargetPosX = ms.ReadFloat();
        proto.TargetPosY = ms.ReadFloat();
        proto.TargetPosZ = ms.ReadFloat();
        proto.ServerTime = ms.ReadLong();
        proto.NeedTime = ms.ReadInt();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}