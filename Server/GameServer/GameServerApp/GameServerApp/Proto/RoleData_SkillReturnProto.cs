//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-28 01:09:09
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// 服务器返回角色学会的技能
/// </summary>
public struct RoleData_SkillReturnProto : IProto
{
    public ushort ProtoCode { get { return 11001; } }
    public string ProtoEnName { get { return "RoleData_SkillReturn"; } }

    public byte SkillCount; //学会的技能数量
    public List<SkillData> CurrSkillDataList; //当前学会的技能

    [Serializable]
    /// <summary>
    /// 当前学会的技能
    /// </summary>
    public struct SkillData
    {
        public int SkillId; //技能编号
        public int SkillLevel; //技能等级
        public byte SlotsNo; //技能槽编号
    }

    public byte[] ToArray(MMO_MemoryStream ms, bool isChild = false)
    {
        ms.SetLength(0);
        if (!isChild)
        {
            ms.WriteUShort(ProtoCode);
        }

        ms.WriteByte(SkillCount);
        for (int i = 0; i < SkillCount; i++)
        {
            var item = CurrSkillDataList[i];
            ms.WriteInt(item.SkillId);
            ms.WriteInt(item.SkillLevel);
            ms.WriteByte(item.SlotsNo);
        }

        return ms.ToArray();
    }

    public static RoleData_SkillReturnProto GetProto(MMO_MemoryStream ms, byte[] buffer)
    {
        RoleData_SkillReturnProto proto = new RoleData_SkillReturnProto();
        ms.SetLength(0);
        ms.Write(buffer, 0, buffer.Length);
        ms.Position = 0;

        proto.SkillCount = (byte)ms.ReadByte();
        proto.CurrSkillDataList = new List<SkillData>();
        for (int i = 0; i < proto.SkillCount; i++)
        {
            SkillData _CurrSkillData = new SkillData();
            _CurrSkillData.SkillId = ms.ReadInt();
            _CurrSkillData.SkillLevel = ms.ReadInt();
            _CurrSkillData.SlotsNo = (byte)ms.ReadByte();
            proto.CurrSkillDataList.Add(_CurrSkillData);
        }

        return proto;
    }
}