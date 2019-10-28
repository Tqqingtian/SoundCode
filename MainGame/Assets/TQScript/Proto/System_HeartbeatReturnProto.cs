//===================================================
//作    者：北冰洋
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 服务器返回心跳
/// </summary>
public struct System_HeartbeatReturnProto : IProto
{
    public ushort ProtoCode { get { return 14002; } }
    public string ProtoEnName { get { return "System_HeartbeatReturn"; } }

    public float LocalTime; //客户端发送的本地时间(毫秒)
    public long ServerTime; //服务器时间(毫秒)

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

        ms.WriteFloat(LocalTime);
        ms.WriteLong(ServerTime);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static System_HeartbeatReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        System_HeartbeatReturnProto proto = new System_HeartbeatReturnProto();

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

        proto.LocalTime = ms.ReadFloat();
        proto.ServerTime = ms.ReadLong();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}