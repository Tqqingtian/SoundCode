//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送角色更新信息消息
/// </summary>
public struct WorldMap_CurrRoleUpdateInfoProto : IProto
{
    public ushort ProtoCode { get { return 13013; } }
    public string ProtoEnName { get { return "WorldMap_CurrRoleUpdateInfo"; } }

    public int RoldId; //角色编号
    public string RoleNickName; //角色昵称

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoldId);
        ms.WriteUTF8String(RoleNickName);

        return ms.ToArray();
    }

    public static WorldMap_CurrRoleUpdateInfoProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_CurrRoleUpdateInfoProto proto = new WorldMap_CurrRoleUpdateInfoProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoldId = ms.ReadInt();
        proto.RoleNickName = ms.ReadUTF8String();

        return proto;
    }
}