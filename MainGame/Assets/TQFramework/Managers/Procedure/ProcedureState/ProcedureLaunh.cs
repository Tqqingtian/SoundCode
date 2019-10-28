using System;
using System.Collections;
using System.Collections.Generic;
using LitJson;
using UnityEngine;
using XLua;

namespace TQ
{
    /// <summary>
    /// 启动流程
    /// </summary>
    public class ProcedureLaunch : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            GameEntry.Log(LogCategory.Procedure, "OnEnter ProcedureLaunch");
            //访问账号服务器
            string url = GameEntry.Http.ReadAccountUrl + "/api/init";

            Dictionary<string, object> dic = GameEntry.Pool.DequeueClassObject < Dictionary<string, object>> ();
            dic.Clear();

            GameEntry.Data.SysDataManager.CurrChannelConfig.ChannelId = 0;
            GameEntry.Data.SysDataManager.CurrChannelConfig.InnerVersion = 1001;

            dic["ChannelId"] = GameEntry.Data.SysDataManager.CurrChannelConfig.ChannelId;
            dic["InnerVersion"] = GameEntry.Data.SysDataManager.CurrChannelConfig.InnerVersion;


            GameEntry.Http.SendData(url, OnWebAccountInit, true, false, dic);
        }

        private void OnWebAccountInit(HttpCallBackArgs args)
        {
            if (!args.HasError)
            {
                JsonData data = JsonMapper.ToObject(args.Value);
                //Debug.Log(data);
                JsonData config = JsonMapper.ToObject(data["Value"].ToString());
                //Debug.Log(data["Value"]);
                GameEntry.Data.SysDataManager.CurrChannelConfig.ServerTime = long.Parse(config["ServerTime"].ToString());
                GameEntry.Data.SysDataManager.CurrChannelConfig.SourceVersion = config["SourceVersion"].ToString();
                GameEntry.Data.SysDataManager.CurrChannelConfig.SourceUrl = config["SourceUrl"].ToString();
                GameEntry.Data.SysDataManager.CurrChannelConfig.RechargeUrl = config["RechargeUrl"].ToString();
                GameEntry.Data.SysDataManager.CurrChannelConfig.TDAppId = config["TDAppId"].ToString();
                GameEntry.Data.SysDataManager.CurrChannelConfig.IsOpenTD = int.Parse(config["IsOpenTD"].ToString()) == 1;

                GameEntry.Log(LogCategory.Resource, "RealSourceUrl:" + GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl);
                //切换到检测版本流程
                GameEntry.Procedure.ChangeState(ProcedureState.CheckVersion);
            }
           
        }

        public override void OnUpdate()
        {
            base.OnUpdate();
        }

        public override void OnLeave()
        {
            base.OnLeave();
            GameEntry.Log(LogCategory.Procedure, "OnLeave ProcedureLaunch");
        }

        public override void OnDestry()
        {
            base.OnDestry();
            GameEntry.Log(LogCategory.Procedure, "OnDestry ProcedureLaunch");
        }
    }
}

