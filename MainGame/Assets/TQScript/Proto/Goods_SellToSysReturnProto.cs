//===================================================
//作    者：北冰洋
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 服务器返回出售物品给系统消息
/// </summary>
public struct Goods_SellToSysReturnProto : IProto
{
    public ushort ProtoCode { get { return 16009; } }
    public string ProtoEnName { get { return "Goods_SellToSysReturn"; } }

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
        }
        ms.WriteInt(MsgCode);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Goods_SellToSysReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        Goods_SellToSysReturnProto proto = new Goods_SellToSysReturnProto();

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
        }
        proto.MsgCode = ms.ReadInt();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}