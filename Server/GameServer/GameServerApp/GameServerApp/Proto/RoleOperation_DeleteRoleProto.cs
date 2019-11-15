//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:41:59
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送删除角色消息
/// </summary>
public struct RoleOperation_DeleteRoleProto : IProto
{
    public ushort ProtoCode { get { return 10005; } }
    public string ProtoEnName { get { return "RoleOperation_DeleteRole"; } }

    public int RoleId; //角色ID

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

    public static RoleOperation_DeleteRoleProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleOperation_DeleteRoleProto proto = new RoleOperation_DeleteRoleProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleId = ms.ReadInt();

        return proto;
    }
}