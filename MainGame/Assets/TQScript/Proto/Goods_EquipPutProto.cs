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
/// 客户端发送穿戴消息
/// </summary>
public struct Goods_EquipPutProto : IProto
{
    public ushort ProtoCode { get { return 16012; } }
    public string ProtoEnName { get { return "Goods_EquipPut"; } }

    public byte Type; //0=穿上 1=脱下
    public int GoodsId; //装备编号
    public int GoodsServerId; //装备服务器端编号

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

        ms.WriteByte(Type);
        ms.WriteInt(GoodsId);
        ms.WriteInt(GoodsServerId);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Goods_EquipPutProto GetProto(byte[] buffer, bool isChild = false)
    {
        Goods_EquipPutProto proto = new Goods_EquipPutProto();

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

        proto.Type = (byte)ms.ReadByte();
        proto.GoodsId = ms.ReadInt();
        proto.GoodsServerId = ms.ReadInt();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}