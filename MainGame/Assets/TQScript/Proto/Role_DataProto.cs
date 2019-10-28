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
/// 角色数据
/// </summary>
public struct Role_DataProto : IProto
{
    public ushort ProtoCode { get { return 10011; } }
    public string ProtoEnName { get { return "Role_Data"; } }

    public int RoleId; //
    public string RoleName; //

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
        ms.WriteUTF8String(RoleName);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Role_DataProto GetProto(byte[] buffer, bool isChild = false)
    {
        Role_DataProto proto = new Role_DataProto();

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
        proto.RoleName = ms.ReadUTF8String();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}