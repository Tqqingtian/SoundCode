//===================================================
//作    者：北冰洋
//创建时间：2019-11-13 22:41:59
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 客户端发送创建角色消息
/// </summary>
public struct RoleOperation_CreateRoleProto : IProto
{
    public ushort ProtoCode { get { return 10003; } }
    public string ProtoEnName { get { return "RoleOperation_CreateRole"; } }

    public byte JobId; //职业ID
    public string RoleNickName; //角色名称

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

        ms.WriteByte(JobId);
        ms.WriteUTF8String(RoleNickName);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static RoleOperation_CreateRoleProto GetProto(byte[] buffer, bool isChild = false)
    {
        RoleOperation_CreateRoleProto proto = new RoleOperation_CreateRoleProto();

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

        proto.JobId = (byte)ms.ReadByte();
        proto.RoleNickName = ms.ReadUTF8String();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}