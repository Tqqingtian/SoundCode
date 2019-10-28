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
/// 服务器返回删除角色消息
/// </summary>
public struct RoleOperation_DeleteRoleReturnProto : IProto
{
    public ushort ProtoCode { get { return 10006; } }
    public string ProtoEnName { get { return "RoleOperation_DeleteRoleReturn"; } }

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

    public static RoleOperation_DeleteRoleReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        RoleOperation_DeleteRoleReturnProto proto = new RoleOperation_DeleteRoleReturnProto();

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