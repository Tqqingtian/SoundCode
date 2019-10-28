//===================================================
//创建时间：2019-05-28 00:53:37
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
/// <summary>
/// 服务器返回任务列表消息（工具只生成一次）
/// </summary>
public sealed class Task_SearchTaskReturnHandler
{
    public static void OnTask_SearchTaskReturn(byte[] buffer)
    {
        Task_SearchTaskReturnProto proto = Task_SearchTaskReturnProto.GetProto(buffer);
#if DEBUG_LOG_PROTO
        Debug.Log("<color=#00eaff>接收消息:</color><color=#00ff9c>" + proto.ProtoEnName + " " + proto.ProtoCode + "</color>");
        Debug.Log("<color=#1232F6>==>>" + JsonUtility.ToJson(proto) + "</color>");
#endif
        //proto.CurrTaskItemList
        GameEntry.Data.UserDataManager.ReceiveTask(proto);
    }
}