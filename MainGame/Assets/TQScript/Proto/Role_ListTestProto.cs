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
/// 角色列表测试
/// </summary>
public struct Role_ListTestProto : IProto
{
    public ushort ProtoCode { get { return 11006; } }
    public string ProtoEnName { get { return "Role_ListTest"; } }

    public int RoleType; //

    /// <summary>
    /// 当前角色
    /// </summary>
    public Role_DataProto CurrRole;

    /// <summary>
    /// 角色列表
    /// </summary>
    public List<Role_DataProto> RoleList;

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

        ms.WriteInt(RoleType);

        byte[] buff_CurrRole = CurrRole.ToArray(true);
        ms.WriteInt(buff_CurrRole.Length);
        ms.Write(buff_CurrRole, 0, buff_CurrRole.Length);

        if (RoleList != null)
        {
            int len_RoleList = RoleList.Count;
            ms.WriteInt(len_RoleList);
            for (int i = 0; i < len_RoleList; i++)
            {
                Role_DataProto _Role_DataProto = RoleList[i];
                byte[] _buff_Curr = _Role_DataProto.ToArray(true);
                ms.WriteInt(_buff_Curr.Length);
                ms.Write(_buff_Curr, 0, _buff_Curr.Length);
            }
        }
        else
        {
            ms.WriteInt(0);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static Role_ListTestProto GetProto(byte[] buffer, bool isChild = false)
    {
        Role_ListTestProto proto = new Role_ListTestProto();

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

        proto.RoleType = ms.ReadInt();

        int len_CurrRole = ms.ReadInt();
        if (len_CurrRole > 0)
        {
            byte[] buff_CurrRole = new byte[len_CurrRole];
            ms.Read(buff_CurrRole, 0, len_CurrRole);
            proto.CurrRole = Role_DataProto.GetProto(buff_CurrRole, true);
        }

        int len_RoleList = ms.ReadInt();
        if (len_RoleList > 0)
        {
            proto.RoleList = new List<Role_DataProto>();
            for (int i = 0; i < len_RoleList; i++)
            {
                int _len_RoleList = ms.ReadInt();
                if (_len_RoleList > 0)
                {
                    byte[] _buff_RoleList = new byte[_len_RoleList];
                    ms.Read(_buff_RoleList, 0, _len_RoleList);
                    proto.RoleList.Add(Role_DataProto.GetProto(_buff_RoleList, true));
                }
            }
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}