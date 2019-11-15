//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回穿戴消息
/// </summary>
public struct Goods_EquipPutReturnProto : IProto
{
    public ushort ProtoCode { get { return 16013; } }
    public string ProtoEnName { get { return "Goods_EquipPutReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码
    public byte Type; //0=穿上 1=脱下
    public int GoodsId; //装备编号
    public int GoodsServerId; //装备服务器端编号

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
            ms.WriteByte(Type);
            ms.WriteInt(GoodsId);
            ms.WriteInt(GoodsServerId);
        }
        else
        {
        }
        ms.WriteInt(MsgCode);

        return ms.ToArray();
    }

    public static Goods_EquipPutReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Goods_EquipPutReturnProto proto = new Goods_EquipPutReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.IsSuccess = ms.ReadBool();
        if (proto.IsSuccess)
        {
            proto.Type = (byte)ms.ReadByte();
            proto.GoodsId = ms.ReadInt();
            proto.GoodsServerId = ms.ReadInt();
        }
        else
        {
        }
        proto.MsgCode = ms.ReadInt();

        return proto;
    }
}