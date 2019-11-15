//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回角色充值信息
/// </summary>
public struct RoleData_RechargeReturnProto : IProto
{
    public ushort ProtoCode { get { return 11002; } }
    public string ProtoEnName { get { return "RoleData_RechargeReturn"; } }

    public bool IsSuccess; //是否成功
    public int RechargeProductId; //充值产品Id
    public byte RechargeProductType; //充值产品类型
    public int Money; //充值后元宝
    public int RemainDay; //剩余天数
    public int ErrorCode; //错误码

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
            ms.WriteInt(RechargeProductId);
            ms.WriteByte(RechargeProductType);
            ms.WriteInt(Money);
            ms.WriteInt(RemainDay);
        }
        else
        {
            ms.WriteInt(ErrorCode);
        }

        return ms.ToArray();
    }

    public static RoleData_RechargeReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleData_RechargeReturnProto proto = new RoleData_RechargeReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.IsSuccess = ms.ReadBool();
        if (proto.IsSuccess)
        {
            proto.RechargeProductId = ms.ReadInt();
            proto.RechargeProductType = (byte)ms.ReadByte();
            proto.Money = ms.ReadInt();
            proto.RemainDay = ms.ReadInt();
        }
        else
        {
            proto.ErrorCode = ms.ReadInt();
        }

        return proto;
    }
}