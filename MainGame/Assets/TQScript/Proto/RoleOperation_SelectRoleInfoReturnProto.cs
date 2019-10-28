//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2019-10-23 23:31:53
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using System;
using TQ;

[Serializable]
/// <summary>
/// 服务器返回角色信息
/// </summary>
public struct RoleOperation_SelectRoleInfoReturnProto : IProto
{
    public ushort ProtoCode { get { return 10010; } }
    public string ProtoEnName { get { return "RoleOperation_SelectRoleInfoReturn"; } }

    public bool IsSuccess; //是否成功
    public int MsgCode; //消息码
    public int RoldId; //角色编号
    public string RoleNickName; //角色昵称
    public byte JobId; //职业编号
    public int Level; //等级
    public int TotalRechargeMoney; //总充值金额
    public int Money; //元宝
    public int Gold; //金币
    public int Exp; //经验
    public int MaxHP; //最大HP
    public int MaxMP; //最大MP
    public int CurrHP; //当前HP
    public int CurrMP; //当前MP
    public int ToSpeed; //出手速度
    public int WeaponDamageMin; //最小武器伤害
    public int WeaponDamageMax; //最大武器伤害
    public int AttackNumber; //攻击次数
    public int StrikePower; //砍劈攻击力
    public int PiercingPower; //穿刺攻击力
    public int MagicPower; //魔法攻击力
    public int LastInWorldMapId; //最后进入的世界地图编号
    public string LastInWorldMapPos; //最后进入的世界地图坐标
    public int Equip_Weapon; //穿戴武器
    public int Equip_Pants; //穿戴护腿
    public int Equip_Clothes; //穿戴衣服
    public int Equip_Belt; //穿戴腰带
    public int Equip_Cuff; //穿戴护腕
    public int Equip_Necklace; //穿戴项链
    public int Equip_Shoe; //穿戴鞋
    public int Equip_Ring; //穿戴戒指
    public int Equip_WeaponTableId; //穿戴武器
    public int Equip_PantsTableId; //穿戴护腿
    public int Equip_ClothesTableId; //穿戴衣服
    public int Equip_BeltTableId; //穿戴腰带
    public int Equip_CuffTableId; //穿戴护腕
    public int Equip_NecklaceTableId; //穿戴项链
    public int Equip_ShoeTableId; //穿戴鞋
    public int Equip_RingTableId; //穿戴戒指
    public int ChoppingDefense; //砍劈防御力
    public int PuncturDefense; //穿刺防御力
    public int MagicDefense; //魔法防御力

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

        ms.WriteBool(IsSuccess);
        if (IsSuccess)
        {
            ms.WriteInt(RoldId);
            ms.WriteUTF8String(RoleNickName);
            ms.WriteByte(JobId);
            ms.WriteInt(Level);
            ms.WriteInt(TotalRechargeMoney);
            ms.WriteInt(Money);
            ms.WriteInt(Gold);
            ms.WriteInt(Exp);
            ms.WriteInt(MaxHP);
            ms.WriteInt(MaxMP);
            ms.WriteInt(CurrHP);
            ms.WriteInt(CurrMP);
            ms.WriteInt(ToSpeed);
            ms.WriteInt(WeaponDamageMin);
            ms.WriteInt(WeaponDamageMax);
            ms.WriteInt(AttackNumber);
            ms.WriteInt(StrikePower);
            ms.WriteInt(PiercingPower);
            ms.WriteInt(MagicPower);
            ms.WriteInt(LastInWorldMapId);
            ms.WriteUTF8String(LastInWorldMapPos);
            ms.WriteInt(Equip_Weapon);
            ms.WriteInt(Equip_Pants);
            ms.WriteInt(Equip_Clothes);
            ms.WriteInt(Equip_Belt);
            ms.WriteInt(Equip_Cuff);
            ms.WriteInt(Equip_Necklace);
            ms.WriteInt(Equip_Shoe);
            ms.WriteInt(Equip_Ring);
            ms.WriteInt(Equip_WeaponTableId);
            ms.WriteInt(Equip_PantsTableId);
            ms.WriteInt(Equip_ClothesTableId);
            ms.WriteInt(Equip_BeltTableId);
            ms.WriteInt(Equip_CuffTableId);
            ms.WriteInt(Equip_NecklaceTableId);
            ms.WriteInt(Equip_ShoeTableId);
            ms.WriteInt(Equip_RingTableId);
            ms.WriteInt(ChoppingDefense);
            ms.WriteInt(PuncturDefense);
            ms.WriteInt(MagicDefense);
        }
        else
        {
            ms.WriteInt(MsgCode);
        }

        byte[] retBuffer = ms.ToArray();
        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return retBuffer;
    }

    public static RoleOperation_SelectRoleInfoReturnProto GetProto(byte[] buffer, bool isChild = false)
    {
        RoleOperation_SelectRoleInfoReturnProto proto = new RoleOperation_SelectRoleInfoReturnProto();

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

        proto.IsSuccess = ms.ReadBool();
        if (proto.IsSuccess)
        {
            proto.RoldId = ms.ReadInt();
            proto.RoleNickName = ms.ReadUTF8String();
            proto.JobId = (byte)ms.ReadByte();
            proto.Level = ms.ReadInt();
            proto.TotalRechargeMoney = ms.ReadInt();
            proto.Money = ms.ReadInt();
            proto.Gold = ms.ReadInt();
            proto.Exp = ms.ReadInt();
            proto.MaxHP = ms.ReadInt();
            proto.MaxMP = ms.ReadInt();
            proto.CurrHP = ms.ReadInt();
            proto.CurrMP = ms.ReadInt();
            proto.ToSpeed = ms.ReadInt();
            proto.WeaponDamageMin = ms.ReadInt();
            proto.WeaponDamageMax = ms.ReadInt();
            proto.AttackNumber = ms.ReadInt();
            proto.StrikePower = ms.ReadInt();
            proto.PiercingPower = ms.ReadInt();
            proto.MagicPower = ms.ReadInt();
            proto.LastInWorldMapId = ms.ReadInt();
            proto.LastInWorldMapPos = ms.ReadUTF8String();
            proto.Equip_Weapon = ms.ReadInt();
            proto.Equip_Pants = ms.ReadInt();
            proto.Equip_Clothes = ms.ReadInt();
            proto.Equip_Belt = ms.ReadInt();
            proto.Equip_Cuff = ms.ReadInt();
            proto.Equip_Necklace = ms.ReadInt();
            proto.Equip_Shoe = ms.ReadInt();
            proto.Equip_Ring = ms.ReadInt();
            proto.Equip_WeaponTableId = ms.ReadInt();
            proto.Equip_PantsTableId = ms.ReadInt();
            proto.Equip_ClothesTableId = ms.ReadInt();
            proto.Equip_BeltTableId = ms.ReadInt();
            proto.Equip_CuffTableId = ms.ReadInt();
            proto.Equip_NecklaceTableId = ms.ReadInt();
            proto.Equip_ShoeTableId = ms.ReadInt();
            proto.Equip_RingTableId = ms.ReadInt();
            proto.ChoppingDefense = ms.ReadInt();
            proto.PuncturDefense = ms.ReadInt();
            proto.MagicDefense = ms.ReadInt();
        }
        else
        {
            proto.MsgCode = ms.ReadInt();
        }

        if (isChild)
        {
            GameEntry.Pool.EnqueueClassObject(ms);
        }
        return proto;
    }
}