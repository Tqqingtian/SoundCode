/********************************     
* 创建时间：2019-05-24 22:11:52   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 系统相关数据
    /// </summary>
    public class SysDataManager : IDisposable
    {
        /// <summary>
        /// 当前的服务器时间
        /// </summary>
        public long CurrServerTime;

     
        public ChannelConfigEntity CurrChannelConfig
        {
            get;
            private set;
        }
        public SysDataManager()
        {
            CurrChannelConfig = new ChannelConfigEntity();
        }

        /// <summary>
        /// 清空数据（临时的数据 用完就删）
        /// </summary>
        public void Clear()
        {

        }


        public void Dispose()
        {
            //CurrChannelConfig.
            
        }
       
    }
}
