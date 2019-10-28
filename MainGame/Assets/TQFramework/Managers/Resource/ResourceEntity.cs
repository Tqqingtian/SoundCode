using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 资源实体（assetbundle和asset实体）
    /// </summary>
    public class ResourceEntity
    {
        public ResourceEntity()
        {
            DependsResourceList = new LinkedList<ResourceEntity>();
        }

        /// <summary>
        /// 资源名称
        /// </summary>
        public string ResourceName;

        /// <summary>
        /// 资源分类（用于asset）
        /// </summary>
        public AssetCategory Category;

        /// <summary>
        /// 是否assetbundle
        /// </summary>
        public bool IsAssetBundle;

        /// <summary>
        /// 关联目标
        /// </summary>
        public object Target;

        /// <summary>
        /// 上次使用时间
        /// </summary>
        private float LastUseTime;

        /// <summary>
        /// 引用计算
        /// </summary>
        public int ReferneceCount
        {
            get;
            private set;
        }
        /// <summary>
        /// 对象取池
        /// </summary>
        public void Spawn()
        {
            LastUseTime = Time.time;
            if (!IsAssetBundle)
            {
                ReferneceCount++;
            }
            else
            {
                //锁定就 不释放
                if (GameEntry.Pool.CheckAssetBundleIsLock(ResourceName))
                {
                    ReferneceCount = 1;
                }
            }
        }
        /// <summary>
        /// 对象回池
        /// </summary>
        public void Unspawn()
        {
            LastUseTime = Time.time;
            ReferneceCount--;
            if (ReferneceCount <= 0)
            {
                ReferneceCount = 0;
            }
        }

        /// <summary>
        /// 对象是可以释放的
        /// </summary>
        /// <returns></returns>
        public bool GetCanRelease()
        {
            if (ReferneceCount == 0 && Time.time - LastUseTime > GameEntry.Pool.ReleaseResourceInterval)
            {
                return true;
            }
            return false;
        }
        /// <summary>
        /// 释放资源
        /// </summary>
        public void Release()
        {
            ResourceName = null;
            ReferneceCount = 0;
            if (IsAssetBundle)
            {
                AssetBundle bundle = Target as AssetBundle;
                bundle.Unload(false);
            }
            Target = null;
            DependsResourceList.Clear();
            GameEntry.Pool.EnqueueClassObject(this);
        }
        /// <summary>
        /// 依赖资源的实体链表
        /// </summary>
        public LinkedList<ResourceEntity> DependsResourceList
        {
            private set;
            get;
        }
    }
}

