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
/// 客户端发送查询装备详情消息
/// </summary>
public struct Goods_SearchEquipDetailProto : IProto
{
    public ushort ProtoCode { get { return 16006; } }
    public string ProtoEnName { get { return "Goods_SearchEquipDetail"; } }

    public int GoodsServerId; //物品服务器端编号

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

        ms.WriteInt(GoodsServerId);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Goods_SearchEquipDetailProto GetProto(byte[] buffer, bool isChild = false)
    {
        Goods_SearchEquipDetailProto proto = new Goods_SearchEquipDetailProto();

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

        proto.GoodsServerId = ms.ReadInt();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}