//===================================================
//作    者：北冰洋
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
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

    public byte[] ToArray(bool isChild = false)
    {
        MMO_MemoryStream ms = null;
        
        if (!isChild)
        {
            ms = GameEntry.Socket.SocketSendMS;
            ms.SetLength(0);
            ms.WriteUShort(ProtoCode);
        }
        else
        {
            ms = GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
            ms.SetLength(0);
        }

        ms.WriteInt(TargetWorldMapSceneId);
        ms.WriteFloat(RolePosX);
        ms.WriteFloat(RolePosY);
        ms.WriteFloat(RolePosZ);
        ms.WriteFloat(RoleYAngle);

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_RoleAlreadyEnterProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_RoleAlreadyEnterProto proto = new WorldMap_RoleAlreadyEnterProto();

        MMO_MemoryStream ms = null;
        if (!isChild)
        {
            ms = GameEntry.Socket.SocketSendMS;
        }
        else
        {
            ms = GameEntry.Pool.DequeueClassObject<MMO_MemoryStream>();
        }
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.TargetWorldMapSceneId = ms.ReadInt();
        proto.RolePosX = ms.ReadFloat();
        proto.RolePosY = ms.ReadFloat();
        proto.RolePosZ = ms.ReadFloat();
        proto.RoleYAngle = ms.ReadFloat();

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}