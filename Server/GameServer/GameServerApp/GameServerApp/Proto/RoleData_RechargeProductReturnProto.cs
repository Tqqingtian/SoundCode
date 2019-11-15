//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回充值产品信息
/// </summary>
public struct RoleData_RechargeProductReturnProto : IProto
{
    public ushort ProtoCode { get { return 11003; } }
    public string ProtoEnName { get { return "RoleData_RechargeProductReturn"; } }

    public int RechargeProductCount; //充值产品数量
    public List<RechargeProductItem> CurrItemList; //充值产品项

    [Serializable]
    /// <summary>
    /// 充值产品项
    /// </summary>
    public struct RechargeProductItem
    {
        public int RechargeProductId; //充值产品编号
        public string ProductDesc; //描述
        public byte CanBuy; //是否可以购买
        public int RemainDay; //剩余天数
        public byte DoubleFlag; //是否双倍
    }

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RechargeProductCount);
        for (int i = 0; i < RechargeProductCount; i++)
        {
            var item = CurrItemList[i];
            ms.WriteInt(item.RechargeProductId);
            ms.WriteUTF8String(item.ProductDesc);
            ms.WriteByte(item.CanBuy);
            ms.WriteInt(item.RemainDay);
            ms.WriteByte(item.DoubleFlag);
        }

        return ms.ToArray();
    }

    public static RoleData_RechargeProductReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleData_RechargeProductReturnProto proto = new RoleData_RechargeProductReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RechargeProductCount = ms.ReadInt();
        proto.CurrItemList = new List<RechargeProductItem>();
        for (int i = 0; i < proto.RechargeProductCount; i++)
        {
            RechargeProductItem _CurrItem = new RechargeProductItem();
            _CurrItem.RechargeProductId = ms.ReadInt();
            _CurrItem.ProductDesc = ms.ReadUTF8String();
            _CurrItem.CanBuy = (byte)ms.ReadByte();
            _CurrItem.RemainDay = ms.ReadInt();
            _CurrItem.DoubleFlag = (byte)ms.ReadByte();
            proto.CurrItemList.Add(_CurrItem);
        }

        return proto;
    }
}