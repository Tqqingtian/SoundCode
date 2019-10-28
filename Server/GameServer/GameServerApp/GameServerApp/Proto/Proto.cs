//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-09-28 20:20:56
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 新建协议
/// </summary>
public struct Proto : IProto
{
    public ushort ProtoCode { get { return -1; } }
    public string ProtoEnName { get { return ""; } }


    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }


        return ms.ToArray();
    }

    public static Proto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Proto proto = new Proto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;


        return proto;
    }
}