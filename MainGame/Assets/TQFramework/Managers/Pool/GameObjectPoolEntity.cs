using PathologicalGames;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 对象池实体
    /// </summary>
    [System.Serializable]
    public class GameObjectPoolEntity
    {
        /// <summary>
        /// 对象池编号
        /// </summary>
        public byte PoolId;
        /// <summary>
        /// 对象池的名称
        /// </summary>
        public string PoolName;
        ///// <summary>
        ///// 预加载数量
        ///// </summary>
        //public int PreloadAmount = 0; 
        /// <summary>
        /// 是否开启清理模式
        /// </summary>
        public bool CullDespawned = true;
        /// <summary>
        /// 缓存自动清理 保留对象
        /// </summary>
        public int CullAbove = 5;
        /// <summary>
        /// 多长时间清理一次
        /// </summary>
        public int CullDelay = 2;
        /// <summary>
        /// 每次清理几个
        /// </summary>
        public int CullMaxPerPass = 2;

        /// <summary>
        /// 对象池
        /// </summary>
        public SpawnPool Pool;

    }
}

