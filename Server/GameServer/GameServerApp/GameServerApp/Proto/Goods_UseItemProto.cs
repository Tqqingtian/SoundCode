//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送使用道具消息
/// </summary>
public struct Goods_UseItemProto : IProto
{
    public ushort ProtoCode { get { return 16010; } }
    public string ProtoEnName { get { return "Goods_UseItem"; } }

    public int BackpackItemId; //背包项编号
    public int GoodsId; //物品编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(BackpackItemId);
        ms.WriteInt(GoodsId);

        return ms.ToArray();
    }

    public static Goods_UseItemProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Goods_UseItemProto proto = new Goods_UseItemProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.BackpackItemId = ms.ReadInt();
        proto.GoodsId = ms.ReadInt();

        return proto;
    }
}