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
/// 服务器广播其他角色死亡消息
/// </summary>
public struct WorldMap_OtherRoleDieProto : IProto
{
    public ushort ProtoCode { get { return 13012; } }
    public string ProtoEnName { get { return "WorldMap_OtherRoleDie"; } }

    public int AttackRoleId; //发起攻击角色Id
    public int DieCount; //死亡角色数量
    public List<int> RoleIdList; //角色编号

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

        ms.WriteInt(AttackRoleId);
        ms.WriteInt(DieCount);
        for (int i = 0; i < DieCount; i++)
        {
            var item = RoleIdList[i];
            ms.WriteInt(item);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static WorldMap_OtherRoleDieProto GetProto(byte[] buffer, bool isChild = false)
    {
        WorldMap_OtherRoleDieProto proto = new WorldMap_OtherRoleDieProto();

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

        proto.AttackRoleId = ms.ReadInt();
        proto.DieCount = ms.ReadInt();
        proto.RoleIdList = new List<int>();
        for (int i = 0; i < proto.DieCount; i++)
        {
            int _RoleId = ms.ReadInt();  //角色编号
            proto.RoleIdList.Add(_RoleId);
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}