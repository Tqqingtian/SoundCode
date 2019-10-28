using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// �������
    /// </summary>
    public class DataComponent : TQBaseComponent
    {
        /// <summary>
        /// ��ʱ�������
        /// </summary>
        public CacheDataManager CacheData
        {
            get;
            private set;
        }
        /// <summary>
        /// ϵͳ������
        /// </summary>
        public SysDataManager SysDataManager
        {
            get;
            private set;
        }
        /// <summary>
        /// �û��������
        /// </summary>
        public UserDataManager UserDataManager
        {
            get;
            private set;
        }

  

        /// <summary>
        /// �ؿ���ͼ����
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


