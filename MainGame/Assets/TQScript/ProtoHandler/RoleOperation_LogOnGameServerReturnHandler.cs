//===================================================
//创建时间：2019-05-28 01:00:41
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 服务器返回登录信息（工具只生成一次）
/// </summary>
public sealed class RoleOperation_LogOnGameServerReturnHandler
{
    public static void OnRoleOperation_LogOnGameServerReturn(byte[] buffer)
    {
        RoleOperation_LogOnGameServerReturnProto proto = RoleOperation_LogOnGameServerReturnProto.GetProto(buffer);
#if DEBUG_LOG_PROTO

        Debug.Log("<color=#55eaff>接收消息:</color><color=#11ff9c>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        Debug.Log("<color=#c5e5dc>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif
    }
}