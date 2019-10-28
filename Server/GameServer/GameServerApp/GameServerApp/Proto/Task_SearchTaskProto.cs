//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送查询任务消息
/// </summary>
public struct Task_SearchTaskProto : IProto
{
    public ushort ProtoCode { get { return 15001; } }
    public string ProtoEnName { get { return "Task_SearchTask"; } }


    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }


        return ms.ToArray();
    }

    public static Task_SearchTaskProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Task_SearchTaskProto proto = new Task_SearchTaskProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;


        return proto;
    }
}