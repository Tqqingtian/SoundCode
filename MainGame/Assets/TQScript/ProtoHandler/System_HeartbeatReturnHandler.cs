//===================================================
//创建时间：2019-05-28 01:00:41
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
/// <summary>
/// 服务器返回心跳（工具只生成一次）
/// </summary>
public sealed class System_HeartbeatReturnHandler
{
    public static void OnSystem_HeartbeatReturn(byte[] buffer)
    {
        System_HeartbeatReturnProto proto = System_HeartbeatReturnProto.GetProto(buffer);
#if DEBUG_LOG_PROTO
        //Debug.Log("<color=#00eaff>接收消息:</color><color=#00ff9c>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        //Debug.Log("<color=#c5e1dc>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif
        float localTime = proto.LocalTime;
        long serverTime = proto.ServerTime;
        GameEntry.Socket.PingValue = (int)((Time.realtimeSinceStartup * 1000 - localTime) * 0.5f);
        GameEntry.Socket.GameServerTime = serverTime - GameEntry.Socket.PingValue;//客户端计算出来的服务器时间

        Debug.Log("PingValue：" + GameEntry.Socket.PingValue);
        Debug.Log("GameServerTime：" + GameEntry.Socket.GameServerTime);
    }
}