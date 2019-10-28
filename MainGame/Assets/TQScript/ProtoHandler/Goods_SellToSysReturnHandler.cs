//===================================================
//创建时间：2019-05-28 00:53:37
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 服务器返回出售物品给系统消息（工具只生成一次）
/// </summary>
public sealed class Goods_SellToSysReturnHandler
{
    public static void OnGoods_SellToSysReturn(byte[] buffer)
    {
        Goods_SellToSysReturnProto proto = Goods_SellToSysReturnProto.GetProto(buffer);
#if DEBUG_LOG_PROTO
        Debug.Log("<color=#00eaff>接收消息:</color><color=#00ff9c>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        Debug.Log("<color=#c5e1dc>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif
    }
}