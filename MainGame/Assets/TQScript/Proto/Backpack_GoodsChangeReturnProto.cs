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
/// 服务器返回背包物品更新消息
/// </summary>
public struct Backpack_GoodsChangeReturnProto : IProto
{
    public ushort ProtoCode { get { return 16003; } }
    public string ProtoEnName { get { return "Backpack_GoodsChangeReturn"; } }

    public int BackpackItemChangeCount; //更新的种类数量
    public List<ChangeItem> ItemList; //更改项

    [Serializable]
    /// <summary>
    /// 更改项
    /// </summary>
    public struct ChangeItem
    {
        public int BackpackId; //背包项编号
        public byte ChangeType; //改变类型
        public byte GoodsType; //物品类型
        public int GoodsId; //物品编号
        public int GoodsCount; //物品数量
        public int GoodsServerId; //物品服务器端Id
    }

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

        ms.WriteInt(BackpackItemChangeCount);
        for (int i = 0; i < BackpackItemChangeCount; i++)
        {
            var item = ItemList[i];
            ms.WriteInt(item.BackpackId);
            ms.WriteByte(item.ChangeType);
            ms.WriteByte(item.GoodsType);
            ms.WriteInt(item.GoodsId);
            ms.WriteInt(item.GoodsCount);
            ms.WriteInt(item.GoodsServerId);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Backpack_GoodsChangeReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        Backpack_GoodsChangeReturnProto proto = new Backpack_GoodsChangeReturnProto();

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

        proto.BackpackItemChangeCount = ms.ReadInt();
        proto.ItemList = new List<ChangeItem>();
        for (int i = 0; i < proto.BackpackItemChangeCount; i++)
        {
            ChangeItem _Item = new ChangeItem();
            _Item.BackpackId = ms.ReadInt();
            _Item.ChangeType = (byte)ms.ReadByte();
            _Item.GoodsType = (byte)ms.ReadByte();
            _Item.GoodsId = ms.ReadInt();
            _Item.GoodsCount = ms.ReadInt();
            _Item.GoodsServerId = ms.ReadInt();
            proto.ItemList.Add(_Item);
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}