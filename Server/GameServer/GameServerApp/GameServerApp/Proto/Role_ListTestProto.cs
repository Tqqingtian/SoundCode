//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-11-13 22:42:00
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

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

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteInt(RoleType);

        byte[] buff_CurrRole = CurrRole.ToArray(new MMO_MemoryStream(), true);
        ms.WriteInt(buff_CurrRole.Length);
        ms.Write(buff_CurrRole, 0, buff_CurrRole.Length);

        if (RoleList != null)
        {
            int len_RoleList = RoleList.Count;
            ms.WriteInt(len_RoleList);
            for (int i = 0; i < len_RoleList; i++)
            {
                Role_DataProto _Role_DataProto = RoleList[i];
                byte[] _buff_Curr = _Role_DataProto.ToArray(new MMO_MemoryStream(), true);
                ms.WriteInt(_buff_Curr.Length);
                ms.Write(_buff_Curr, 0, _buff_Curr.Length);
            }
        }
        else
        {
            ms.WriteInt(0);
        }

        return ms.ToArray();
    }

    public static Role_ListTestProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        Role_ListTestProto proto = new Role_ListTestProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.RoleType = ms.ReadInt();

        int len_CurrRole = ms.ReadInt();
        if (len_CurrRole > 0)
        {
            byte[] buff_CurrRole = new byte[len_CurrRole];
            ms.Read(buff_CurrRole, 0, len_CurrRole);
            proto.CurrRole = Role_DataProto.GetProto(new MMO_MemoryStream(), buff_CurrRole);
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
                    proto.RoleList.Add(Role_DataProto.GetProto(new MMO_MemoryStream(), _buff_RoleList));
                }
            }
        }

        return proto;
    }
}