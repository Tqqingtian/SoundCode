//===================================================
//作    者：北冰洋
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 服务器返回登录信息
/// </summary>
public struct RoleOperation_LogOnGameServerReturnProto : IProto
{
    public ushort ProtoCode { get { return 10002; } }
    public string ProtoEnName { get { return "RoleOperation_LogOnGameServerReturn"; } }

    public int RoleCount; //已有角色数量
    public List<RoleItem> RoleList; //角色项

    [Serializable]
    /// <summary>
    /// 角色项
    /// </summary>
    public struct RoleItem
    {
        public int RoleId; //角色编号
        public string RoleNickName; //角色昵称
        public byte RoleJob; //角色职业
        public int RoleLevel; //角色等级
    }

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

        ms.WriteInt(RoleCount);
        for (int i = 0; i < RoleCount; i++)
        {
            var item = RoleList[i];
            ms.WriteInt(item.RoleId);
            ms.WriteUTF8String(item.RoleNickName);
            ms.WriteByte(item.RoleJob);
            ms.WriteInt(item.RoleLevel);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static RoleOperation_LogOnGameServerReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        RoleOperation_LogOnGameServerReturnProto proto = new RoleOperation_LogOnGameServerReturnProto();

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

        proto.RoleCount = ms.ReadInt();
        proto.RoleList = new List<RoleItem>();
        for (int i = 0; i < proto.RoleCount; i++)
        {
            RoleItem _Role = new RoleItem();
            _Role.RoleId = ms.ReadInt();
            _Role.RoleNickName = ms.ReadUTF8String();
            _Role.RoleJob = (byte)ms.ReadByte();
            _Role.RoleLevel = ms.ReadInt();
            proto.RoleList.Add(_Role);
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}