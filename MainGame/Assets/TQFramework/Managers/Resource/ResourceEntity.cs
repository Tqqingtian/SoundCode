using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ��Դʵ�壨assetbundle��assetʵ�壩
    /// </summary>
    public class ResourceEntity
    {
        public ResourceEntity()
        {
            DependsResourceList = new LinkedList<ResourceEntity>();
        }

        /// <summary>
        /// ��Դ����
        /// </summary>
        public string ResourceName;

        /// <summary>
        /// ��Դ���ࣨ����asset��
        /// </summary>
        public AssetCategory Category;

        /// <summary>
        /// �Ƿ�assetbundle
        /// </summary>
        public bool IsAssetBundle;

        /// <summary>
        /// ����Ŀ��
        /// </summary>
        public object Target;

        /// <summary>
        /// �ϴ�ʹ��ʱ��
        /// </summary>
        private float LastUseTime;

        /// <summary>
        /// ���ü���
        /// </summary>
        public int ReferneceCount
        {
            get;
            private set;
        }
        /// <summary>
        /// ����ȡ��
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
                //������ ���ͷ�
                if (GameEntry.Pool.CheckAssetBundleIsLock(ResourceName))
                {
                    ReferneceCount = 1;
                }
            }
        }
        /// <summary>
        /// ����س�
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
        /// �����ǿ����ͷŵ�
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
        /// �ͷ���Դ
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
        /// ������Դ��ʵ������
        /// </summary>
        public LinkedList<ResourceEntity> DependsResourceList
        {
            private set;
            get;
        }
    }
}

