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
/// 客户端查询角色信息
/// </summary>
public struct RoleOperation_SelectRoleInfoProto : IProto
{
    public ushort ProtoCode { get { return 10009; } }
    public string ProtoEnName { get { return "RoleOperation_SelectRoleInfo"; } }

    public int RoldId; //角色编号

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

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static RoleOperation_SelectRoleInfoProto GetProto(byte[] buffer, bool isChild = false)
    {
        RoleOperation_SelectRoleInfoProto proto = new RoleOperation_SelectRoleInfoProto();

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

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}