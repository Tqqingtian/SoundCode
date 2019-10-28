//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:10
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器广播角色复活消息
/// </summary>
public struct WorldMap_OtherRoleResurgenceProto : IProto
{
    public ushort ProtoCode { get { return 13016; } }
    public string ProtoEnName { get { return "WorldMap_OtherRoleResurgence"; } }

    public int RoleId; //角色编号

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleId);

        return ms.ToArray();
    }

    public static WorldMap_OtherRoleResurgenceProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_OtherRoleResurgenceProto proto = new WorldMap_OtherRoleResurgenceProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleId = ms.ReadInt();

        return proto;
    }
}