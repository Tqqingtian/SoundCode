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
/// 客户端发送自身坐标
/// </summary>
public struct WorldMap_PosProto : IProto
{
    public ushort ProtoCode { get { return 13003; } }
    public string ProtoEnName { get { return "WorldMap_Pos"; } }

    public float x; //x
    public float y; //y
    public float z; //z
    public float yAngle; //y轴旋转

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

        ms.WriteFloat(x);
        ms.WriteFloat(y);
        ms.WriteFloat(z);
        ms.WriteFloat(yAngle);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_PosProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_PosProto proto = new WorldMap_PosProto();

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

        proto.x = ms.ReadFloat();
        proto.y = ms.ReadFloat();
        proto.z = ms.ReadFloat();
        proto.yAngle = ms.ReadFloat();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}