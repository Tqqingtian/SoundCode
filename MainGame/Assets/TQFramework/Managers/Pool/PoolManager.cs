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
        /// ��Դ����
        /// </summary>
        public ResoursePool AssetBundlePool
        {
            get;
            private set;
        }

        /// <summary>
        /// ������Դ��
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
            //ȷ����Ϸ�տ�ʼ���е�ʱ�� ������Դ���Ѿ���ʼ������
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
        /// �ͷ�������
        /// </summary>
        public void ReleaseClassObjectPool()
        {
            ClassObjectPool.Relsase();
        }
        /// <summary>
        /// �ͷ�������
        /// </summary>
        public void ReleaseAssetBundlePool()
        {
            AssetBundlePool.Release();
        }

        /// <summary>
        /// �ͷŷ�����е�������Դ
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

