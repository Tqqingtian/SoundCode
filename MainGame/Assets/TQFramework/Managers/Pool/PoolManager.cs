using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    public class PoolManager : ManagerBase, IDisposable
    {

        public ClassObjectPool ClassObjectPool
        {
            get;
            private set;
        }
        public GameObjectPool GameObjectPool
        {
            get;
            private set;
        }
        /// <summary>
        /// 资源包池
        /// </summary>
        public ResoursePool AssetBundlePool
        {
            get;
            private set;
        }

        /// <summary>
        /// 分类资源池
        /// </summary>
        public Dictionary<AssetCategory, ResoursePool> AssetPool
        {
            get;
            private set;
        }

        public PoolManager()
        {
            ClassObjectPool = new ClassObjectPool();
            GameObjectPool = new GameObjectPool();

            AssetBundlePool = new ResoursePool("AssetBundlePool");

            AssetPool = new Dictionary<AssetCategory, ResoursePool>();
            //确保游戏刚开始运行的时候 分类资源池已经初始化好了
            var enumerator = Enum.GetValues(typeof(AssetCategory)).GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetCategory assetCategory = (AssetCategory)enumerator.Current;
                if (assetCategory==AssetCategory.None)
                {
                    continue;
                }
                AssetPool[assetCategory] = new ResoursePool(assetCategory.ToString());
            }
        }
        /// <summary>
        /// 释放类对象池
        /// </summary>
        public void ReleaseClassObjectPool()
        {
            ClassObjectPool.Relsase();
        }
        /// <summary>
        /// 释放类对象池
        /// </summary>
        public void ReleaseAssetBundlePool()
        {
            AssetBundlePool.Release();
        }

        /// <summary>
        /// 释放分类池中的所有资源
        /// </summary>
        public void ReleaseAssetPool()
        {
            var enumerator = Enum.GetValues(typeof(AssetCategory)).GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetCategory assetCategory = (AssetCategory)enumerator.Current;
                if (assetCategory==AssetCategory.None)
                {
                    continue;
                }
                AssetPool[assetCategory].Release();
            }
        }
       
        
        public void Dispose()
        {
            ClassObjectPool.Dispose();
            GameObjectPool.Dispose();
        }
    }
}

