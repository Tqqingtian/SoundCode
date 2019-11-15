//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送角色复活消息
/// </summary>
public struct WorldMap_CurrRoleResurgenceProto : IProto
{
    public ushort ProtoCode { get { return 13015; } }
    public string ProtoEnName { get { return "WorldMap_CurrRoleResurgence"; } }

    public int Type; //复活类型

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(Type);

        return ms.ToArray();
    }

    public static WorldMap_CurrRoleResurgenceProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_CurrRoleResurgenceProto proto = new WorldMap_CurrRoleResurgenceProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.Type = ms.ReadInt();

        return proto;
    }
}