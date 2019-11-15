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
/// 客户端发送出售物品给系统消息
/// </summary>
public struct Goods_SellToSysProto : IProto
{
    public ushort ProtoCode { get { return 16008; } }
    public string ProtoEnName { get { return "Goods_SellToSys"; } }

    public int roleBackpackId; //背包项编号
    public byte GoodsType; //物品类型
    public int GoodsId; //物品编号
    public int GoodsServerId; //服务服务器端编号
    public int SellCount; //出售数量

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

        ms.WriteInt(roleBackpackId);
        ms.WriteByte(GoodsType);
        ms.WriteInt(GoodsId);
        ms.WriteInt(GoodsServerId);
        ms.WriteInt(SellCount);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Goods_SellToSysProto GetProto(byte[] buffer, bool isChild = false)
    {
        Goods_SellToSysProto proto = new Goods_SellToSysProto();

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

        proto.roleBackpackId = ms.ReadInt();
        proto.GoodsType = (byte)ms.ReadByte();
        proto.GoodsId = ms.ReadInt();
        proto.GoodsServerId = ms.ReadInt();
        proto.SellCount = ms.ReadInt();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}