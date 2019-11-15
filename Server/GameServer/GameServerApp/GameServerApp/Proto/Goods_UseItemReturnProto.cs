//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回使用道具消息
/// </summary>
public struct Goods_UseItemReturnProto : IProto
{
    public ushort ProtoCode { get { return 16011; } }
    public string ProtoEnName { get { return "Goods_UseItemReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码
    public int GoodsId; //物品编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteBool(IsSuccess);
        if (IsSuccess)
        {
            ms.WriteInt(GoodsId);
        }
        else
        {
            ms.WriteInt(MsgCode);
        }

        return ms.ToArray();
    }

    public static Goods_UseItemReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Goods_UseItemReturnProto proto = new Goods_UseItemReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.IsSuccess = ms.ReadBool();
        if (proto.IsSuccess)
        {
            proto.GoodsId = ms.ReadInt();
        }
        else
        {
            proto.MsgCode = ms.ReadInt();
        }

        return proto;
    }
}