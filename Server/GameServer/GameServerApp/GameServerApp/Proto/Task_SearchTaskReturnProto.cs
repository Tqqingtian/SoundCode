//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回任务列表消息
/// </summary>
public struct Task_SearchTaskReturnProto : IProto
{
    public ushort ProtoCode { get { return 15002; } }
    public string ProtoEnName { get { return "Task_SearchTaskReturn"; } }

    public int TaskCount; //任务数量
    public List<TaskItem> CurrTaskItemList; //任务项

    [Serializable]
    /// <summary>
    /// 任务项
    /// </summary>
    public struct TaskItem
    {
        public int Id; //任务编号
        public string Name; //任务名称
        public int Status; //任务状态
        public string Content; //任务描述
    }

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(TaskCount);
        for (int i = 0; i < TaskCount; i++)
        {
            var item = CurrTaskItemList[i];
            ms.WriteInt(item.Id);
            ms.WriteUTF8String(item.Name);
            ms.WriteInt(item.Status);
            ms.WriteUTF8String(item.Content);
        }

        return ms.ToArray();
    }

    public static Task_SearchTaskReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Task_SearchTaskReturnProto proto = new Task_SearchTaskReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.TaskCount = ms.ReadInt();
        proto.CurrTaskItemList = new List<TaskItem>();
        for (int i = 0; i < proto.TaskCount; i++)
        {
            TaskItem _CurrTaskItem = new TaskItem();
            _CurrTaskItem.Id = ms.ReadInt();
            _CurrTaskItem.Name = ms.ReadUTF8String();
            _CurrTaskItem.Status = ms.ReadInt();
            _CurrTaskItem.Content = ms.ReadUTF8String();
            proto.CurrTaskItemList.Add(_CurrTaskItem);
        }

        return proto;
    }
}