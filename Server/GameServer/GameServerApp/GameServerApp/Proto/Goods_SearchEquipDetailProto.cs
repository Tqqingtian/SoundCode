//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送查询装备详情消息
/// </summary>
public struct Goods_SearchEquipDetailProto : IProto
{
    public ushort ProtoCode { get { return 16006; } }
    public string ProtoEnName { get { return "Goods_SearchEquipDetail"; } }

    public int GoodsServerId; //物品服务器端编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(GoodsServerId);

        return ms.ToArray();
    }

    public static Goods_SearchEquipDetailProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Goods_SearchEquipDetailProto proto = new Goods_SearchEquipDetailProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.GoodsServerId = ms.ReadInt();

        return proto;
    }
}