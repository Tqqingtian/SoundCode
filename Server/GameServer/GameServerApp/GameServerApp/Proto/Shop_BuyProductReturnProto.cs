//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回购买商城物品消息
/// </summary>
public struct Shop_BuyProductReturnProto : IProto
{
    public ushort ProtoCode { get { return 16002; } }
    public string ProtoEnName { get { return "Shop_BuyProductReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteBool(IsSuccess);
        if (!IsSuccess)
        {
        }
        ms.WriteInt(MsgCode);

        return ms.ToArray();
    }

    public static Shop_BuyProductReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Shop_BuyProductReturnProto proto = new Shop_BuyProductReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.IsSuccess = ms.ReadBool();
        if (!proto.IsSuccess)
        {
        }
        proto.MsgCode = ms.ReadInt();

        return proto;
    }
}