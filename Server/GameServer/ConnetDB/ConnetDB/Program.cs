using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mmcoy.Framework;

static class Program
{

    static void Main()
    {
      
        //把角色信息添加到数据库
        RoleEntity entity = new RoleEntity();
        entity.JobId = 1;
        entity.Status = Mmcoy.Framework.AbstractBase.EnumEntityStatus.Released;
        entity.AccountId =222;
        entity.NickName = "sdsada";
        entity.Level = 1;
        entity.LastInWorldMapId = 1;
        entity.CreateTime = DateTime.Now;
        entity.UpdateTime = DateTime.Now;
        entity.CurrHP = entity.MaxHP = 100;
        entity.CurrMP = entity.MaxMP = 100;
        entity.ToSpeed = 10;
        entity.WeaponDamageMin = 0;
        entity.WeaponDamageMax = 0;
        entity.AttackNumber = 0;
        entity.StrikePower = 0;
        entity.PiercingPower = 0;
        entity.MagicPower = 0;
        entity.ChoppingDefense = 0;
        entity.PuncturDefense = 0;
        entity.MagicDefense = 0;
        Console.Write("创建角色" + entity.JobId + "昵称：" + entity.NickName);
        int count = RoleCacheModel.Instance.GetCount(string.Format("[NickName]='{0}'", entity.NickName));
        MFReturnValue<object> retValue = null;
        if (count == 0)
        {
            retValue = RoleCacheModel.Instance.Create(entity);
        }
        else
        {
            retValue = new MFReturnValue<object>();
            retValue.HasError = true;
            retValue.ReturnCode = 1000;
        }

    }
}
