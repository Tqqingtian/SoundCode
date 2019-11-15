//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 角色数据
/// </summary>
public struct Role_DataProto : IProto
{
    public ushort ProtoCode { get { return 10011; } }
    public string ProtoEnName { get { return "Role_Data"; } }

    public int RoleId; //
    public string RoleName; //

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleId);
        ms.WriteUTF8String(RoleName);

        return ms.ToArray();
    }

    public static Role_DataProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Role_DataProto proto = new Role_DataProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleId = ms.ReadInt();
        proto.RoleName = ms.ReadUTF8String();

        return proto;
    }
}