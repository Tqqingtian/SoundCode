//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送购买商城物品消息
/// </summary>
public struct Shop_BuyProductProto : IProto
{
    public ushort ProtoCode { get { return 16001; } }
    public string ProtoEnName { get { return "Shop_BuyProduct"; } }

    public int ProductId; //商品编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(ProductId);

        return ms.ToArray();
    }

    public static Shop_BuyProductProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Shop_BuyProductProto proto = new Shop_BuyProductProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.ProductId = ms.ReadInt();

        return proto;
    }
}