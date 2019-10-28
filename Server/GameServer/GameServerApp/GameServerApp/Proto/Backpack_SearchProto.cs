//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送查询背包项消息
/// </summary>
public struct Backpack_SearchProto : IProto
{
    public ushort ProtoCode { get { return 16004; } }
    public string ProtoEnName { get { return "Backpack_Search"; } }


    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }


        return ms.ToArray();
    }

    public static Backpack_SearchProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Backpack_SearchProto proto = new Backpack_SearchProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;


        return proto;
    }
}