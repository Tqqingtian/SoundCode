//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回元宝更新消息
/// </summary>
public struct RoleData_MondeyChangeReturnProto : IProto
{
    public ushort ProtoCode { get { return 11004; } }
    public string ProtoEnName { get { return "RoleData_MondeyChangeReturn"; } }

    public int OldMoney; //更新前元宝
    public int CurrMoney; //更新后当前元宝
    public byte ChangeType; //更新方式 0=增加 1=减少
    public byte AddType; //增加的方式
    public byte ReduceType; //减少方式
    public byte GoodsType; //物品类型
    public int GoodsId; //物品编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(OldMoney);
        ms.WriteInt(CurrMoney);
        ms.WriteByte(ChangeType);
        ms.WriteByte(AddType);
        ms.WriteByte(ReduceType);
        ms.WriteByte(GoodsType);
        ms.WriteInt(GoodsId);

        return ms.ToArray();
    }

    public static RoleData_MondeyChangeReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleData_MondeyChangeReturnProto proto = new RoleData_MondeyChangeReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.OldMoney = ms.ReadInt();
        proto.CurrMoney = ms.ReadInt();
        proto.ChangeType = (byte)ms.ReadByte();
        proto.AddType = (byte)ms.ReadByte();
        proto.ReduceType = (byte)ms.ReadByte();
        proto.GoodsType = (byte)ms.ReadByte();
        proto.GoodsId = ms.ReadInt();

        return proto;
    }
}