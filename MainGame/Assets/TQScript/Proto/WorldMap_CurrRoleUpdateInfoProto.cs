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
/// 客户端发送角色更新信息消息
/// </summary>
public struct WorldMap_CurrRoleUpdateInfoProto : IProto
{
    public ushort ProtoCode { get { return 13013; } }
    public string ProtoEnName { get { return "WorldMap_CurrRoleUpdateInfo"; } }

    public int RoldId; //角色编号
    public string RoleNickName; //角色昵称

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

        ms.WriteInt(RoldId);
        ms.WriteUTF8String(RoleNickName);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_CurrRoleUpdateInfoProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_CurrRoleUpdateInfoProto proto = new WorldMap_CurrRoleUpdateInfoProto();

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

        proto.RoldId = ms.ReadInt();
        proto.RoleNickName = ms.ReadUTF8String();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}