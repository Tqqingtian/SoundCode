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
/// 客户端发送当前角色移动消息
/// </summary>
public struct WorldMap_CurrRoleMoveProto : IProto
{
    public ushort ProtoCode { get { return 13008; } }
    public string ProtoEnName { get { return "WorldMap_CurrRoleMove"; } }

    public float TargetPosX; //目标坐标X
    public float TargetPosY; //目标坐标Y
    public float TargetPosZ; //目标坐标Z
    public long ServerTime; //客户端发包时的服务器时间（毫秒）
    public int NeedTime; //客户端移动所需时间（毫秒）

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

    public static WorldMap_CurrRoleMoveProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_CurrRoleMoveProto proto = new WorldMap_CurrRoleMoveProto();

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