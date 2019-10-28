//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送进入游戏关卡消息
/// </summary>
public struct GameLevel_EnterProto : IProto
{
    public ushort ProtoCode { get { return 12001; } }
    public string ProtoEnName { get { return "GameLevel_Enter"; } }

    public int GameLevelId; //游戏关卡Id
    public byte Grade; //难度等级

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(GameLevelId);
        ms.WriteByte(Grade);

        return ms.ToArray();
    }

    public static GameLevel_EnterProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        GameLevel_EnterProto proto = new GameLevel_EnterProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.GameLevelId = ms.ReadInt();
        proto.Grade = (byte)ms.ReadByte();

        return proto;
    }
}