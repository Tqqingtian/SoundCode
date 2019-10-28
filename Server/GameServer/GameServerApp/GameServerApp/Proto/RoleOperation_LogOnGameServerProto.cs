//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送登录区服消息
/// </summary>
public struct RoleOperation_LogOnGameServerProto : IProto
{
    public ushort ProtoCode { get { return 10001; } }
    public string ProtoEnName { get { return "RoleOperation_LogOnGameServer"; } }

    public int AccountId; //账户ID

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(AccountId);

        return ms.ToArray();
    }

    public static RoleOperation_LogOnGameServerProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleOperation_LogOnGameServerProto proto = new RoleOperation_LogOnGameServerProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.AccountId = ms.ReadInt();

        return proto;
    }
}