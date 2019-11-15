//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回复活消息
/// </summary>
public struct GameLevel_ResurgenceReturnProto : IProto
{
    public ushort ProtoCode { get { return 12008; } }
    public string ProtoEnName { get { return "GameLevel_ResurgenceReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteBool(IsSuccess);
        if (!IsSuccess)
        {
            ms.WriteInt(MsgCode);
        }

        return ms.ToArray();
    }

    public static GameLevel_ResurgenceReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        GameLevel_ResurgenceReturnProto proto = new GameLevel_ResurgenceReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.IsSuccess = ms.ReadBool();
        if (!proto.IsSuccess)
        {
            proto.MsgCode = ms.ReadInt();
        }

        return proto;
    }
}