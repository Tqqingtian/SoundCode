//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送自身坐标
/// </summary>
public struct WorldMap_PosProto : IProto
{
    public ushort ProtoCode { get { return 13003; } }
    public string ProtoEnName { get { return "WorldMap_Pos"; } }

    public float x; //x
    public float y; //y
    public float z; //z
    public float yAngle; //y轴旋转

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteFloat(x);
        ms.WriteFloat(y);
        ms.WriteFloat(z);
        ms.WriteFloat(yAngle);

        return ms.ToArray();
    }

    public static WorldMap_PosProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_PosProto proto = new WorldMap_PosProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.x = ms.ReadFloat();
        proto.y = ms.ReadFloat();
        proto.z = ms.ReadFloat();
        proto.yAngle = ms.ReadFloat();

        return proto;
    }
}