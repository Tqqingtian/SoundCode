//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送进入世界地图场景消息
/// </summary>
public struct WorldMap_RoleEnterProto : IProto
{
    public ushort ProtoCode { get { return 13001; } }
    public string ProtoEnName { get { return "WorldMap_RoleEnter"; } }

    public int WorldMapSceneId; //世界地图场景编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(WorldMapSceneId);

        return ms.ToArray();
    }

    public static WorldMap_RoleEnterProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_RoleEnterProto proto = new WorldMap_RoleEnterProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.WorldMapSceneId = ms.ReadInt();

        return proto;
    }
}