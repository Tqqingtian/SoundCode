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
/// 服务器返回进入世界地图场景消息
/// </summary>
public struct WorldMap_RoleEnterReturnProto : IProto
{
    public ushort ProtoCode { get { return 13002; } }
    public string ProtoEnName { get { return "WorldMap_RoleEnterReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码

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

        ms.WriteBool(IsSuccess);
        if (!IsSuccess)
        {
            ms.WriteInt(MsgCode);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_RoleEnterReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_RoleEnterReturnProto proto = new WorldMap_RoleEnterReturnProto();

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

        proto.IsSuccess = ms.ReadBool();
        if (!proto.IsSuccess)
        {
            proto.MsgCode = ms.ReadInt();
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}