using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 数据列表组件
    /// </summary>
    public class DataTableComponent : TQBaseComponent
    {
        /// <summary>
        /// 表格管理器
        /// </summary>
        public DataTableManager DataTableManager
        {
            get;
            private set;
        }
        protected override void OnAwake()
        {
            base.OnAwake();
            DataTableManager = new DataTableManager();
        }
        public override void Shutdown()
        {
            DataTableManager.Clear();
        }
        /// <summary>
        /// 异步加载表格
        /// </summary>
        public void LoadDataTableAsync()
        {
            DataTableManager.LoadDataTableAsync();

        }
    }
}

