using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 数据组件
    /// </summary>
    public class DataComponent : TQBaseComponent
    {
        /// <summary>
        /// 临时数据组件
        /// </summary>
        public CacheDataManager CacheData
        {
            get;
            private set;
        }
        /// <summary>
        /// 系统相关组件
        /// </summary>
        public SysDataManager SysDataManager
        {
            get;
            private set;
        }
        /// <summary>
        /// 用户数据组件
        /// </summary>
        public UserDataManager UserDataManager
        {
            get;
            private set;
        }

  

        /// <summary>
        /// 关卡地图数据
        /// </summary>
        public PVEDataManager PVEData
        {
            get;
            private set;
        }

        protected override void OnAwake()
        {
            base.OnAwake();
            CacheData = new CacheDataManager();
            SysDataManager = new SysDataManager();
            UserDataManager = new UserDataManager();
            PVEData = new PVEDataManager();

        }

        public override void Shutdown()
        {
            CacheData.Dispose();
            SysDataManager.Dispose();
            UserDataManager.Dispose();
            PVEData.Dispose();
        }
    }
}


