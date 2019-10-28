//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 客户端发送角色已经进入世界地图场景消息
/// </summary>
public struct WorldMap_RoleAlreadyEnterProto : IProto
{
    public ushort ProtoCode { get { return 13004; } }
    public string ProtoEnName { get { return "WorldMap_RoleAlreadyEnter"; } }

    public int TargetWorldMapSceneId; //目标场景编号
    public float RolePosX; //角色坐标X
    public float RolePosY; //角色坐标Y
    public float RolePosZ; //角色坐标Z
    public float RoleYAngle; //角色Y轴旋转

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(TargetWorldMapSceneId);
        ms.WriteFloat(RolePosX);
        ms.WriteFloat(RolePosY);
        ms.WriteFloat(RolePosZ);
        ms.WriteFloat(RoleYAngle);

        return ms.ToArray();
    }

    public static WorldMap_RoleAlreadyEnterProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        WorldMap_RoleAlreadyEnterProto proto = new WorldMap_RoleAlreadyEnterProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.TargetWorldMapSceneId = ms.ReadInt();
        proto.RolePosX = ms.ReadFloat();
        proto.RolePosY = ms.ReadFloat();
        proto.RolePosZ = ms.ReadFloat();
        proto.RoleYAngle = ms.ReadFloat();

        return proto;
    }
}