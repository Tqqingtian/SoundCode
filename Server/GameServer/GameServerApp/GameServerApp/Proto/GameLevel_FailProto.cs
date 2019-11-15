//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送战斗失败消息
/// </summary>
public struct GameLevel_FailProto : IProto
{
    public ushort ProtoCode { get { return 12005; } }
    public string ProtoEnName { get { return "GameLevel_Fail"; } }

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

    public static GameLevel_FailProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        GameLevel_FailProto proto = new GameLevel_FailProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.GameLevelId = ms.ReadInt();
        proto.Grade = (byte)ms.ReadByte();

        return proto;
    }
}