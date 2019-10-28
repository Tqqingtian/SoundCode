//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回心跳
/// </summary>
public struct System_HeartbeatReturnProto : IProto
{
    public ushort ProtoCode { get { return 14002; } }
    public string ProtoEnName { get { return "System_HeartbeatReturn"; } }

    public float LocalTime; //客户端发送的本地时间(毫秒)
    public long ServerTime; //服务器时间(毫秒)

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteFloat(LocalTime);
        ms.WriteLong(ServerTime);

        return ms.ToArray();
    }

    public static System_HeartbeatReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        System_HeartbeatReturnProto proto = new System_HeartbeatReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.LocalTime = ms.ReadFloat();
        proto.ServerTime = ms.ReadLong();

        return proto;
    }
}