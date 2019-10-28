using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class PoolComponent : TQBaseComponent,IUpdateComponent
    {
        [Header("��������Դ��")]
        /// <summary>
        /// ������Դ���������ͷš�
        /// </summary>
        public string[] LockedAssetBundle;

        /// <summary>
        /// ������Դ������ĳ���
        /// </summary>
        private int m_LockedAssetBundleLength;

        public PoolManager PoolManager
        {
            get;
            private set;
        }
        protected override void OnAwake()
        {
            base.OnAwake();
            PoolManager = new PoolManager();
            GameEntry.RegisterUpdateComponent(this);

            m_ReleaseClassObjectNextRunTime = Time.time;
            m_ReleaseAssetBundleNextRunTime = Time.time;
            m_ReleaseAssetNextRunTime = Time.time;

            InitGameObjectPool();

            FontDic = new Dictionary<string, ResourceEntity>();

        }

        protected override void OnStart()
        {
            base.OnStart();
     
            m_LockedAssetBundleLength = LockedAssetBundle.Length;

            InitClassReside();
        }
        /// <summary>
        /// �����Դ���Ƿ�����
        /// </summary>
        /// <param name="assetBundleName"></param>
        /// <returns></returns>
        public bool CheckAssetBundleIsLock(string assetBundleName)
        {
            for (int i = 0; i < m_LockedAssetBundleLength; i++)
            {
                if (LockedAssetBundle[i].Equals(assetBundleName,StringComparison.CurrentCultureIgnoreCase))
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// ��ʼ�������б�פ����
        /// </summary>
        private void InitClassReside()
        {
            GameEntry.Pool.SetClassObjectResideCount<HttpRoutine>(3);
            GameEntry.Pool.SetClassObjectResideCount<Dictionary<string, object>>(3);
      
            GameEntry.Pool.SetClassObjectResideCount<AssetBundleLoaderRoutine>(10);
            GameEntry.Pool.SetClassObjectResideCount<AssetLoaderRoutine>(10);
            GameEntry.Pool.SetClassObjectResideCount<ResourceEntity>(10);

            GameEntry.Pool.SetClassObjectResideCount<MainAssetLoaderRoutine>(30);
            
        }


        #region SetClassObjectResideCount ������ĳ�������
        /// <summary>
        /// ������ĳ�������
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="count"></param>
        public void SetClassObjectResideCount<T>(byte count) where T : class
        {
            PoolManager.ClassObjectPool.SetResideCount<T>(count);
        }
        #endregion

        #region Dequeue ȡ��һ������
        /// <summary>
        /// ȡ��һ������
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public T DequeueClassObject<T>() where T : class, new()
        {
            
            return PoolManager.ClassObjectPool.Dequeue<T>();
        }
        #endregion

        #region Enqueue ����س�
        /// <summary>
        /// ����س�
        /// </summary>
        /// <param name="obj"></param>
        public void EnqueueClassObject(object obj)
        {
            PoolManager.ClassObjectPool.Enqueue(obj);

        }
        #endregion

        #region �����Ķ����
        /// <summary>
        /// �����������
        /// </summary>
        private object m_VarObjectLock =new object();
#if UNITY_EDITOR
        public Dictionary<Type, int> VarObjectInspectorDic = new Dictionary<Type, int>();

#endif
        /// <summary>
        /// ȡ��һ����������
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public T DequeueVarObject<T>() where T : VariableBase, new()
        {
            lock (m_VarObjectLock)
            {
                T item = DequeueClassObject<T>();
#if UNITY_EDITOR
                Type t = item.GetType();
                if (VarObjectInspectorDic.ContainsKey(t))
                {
                    VarObjectInspectorDic[t]++;
                }
                else
                {
                    VarObjectInspectorDic[t]=1;
                }
#endif
                return item;
                //return DequeueClassObjec<T>();
            }
           
        }
        /// <summary>
        /// ��������س�
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="item"></param>
        public void EnqueueVarObject<T>(T item) where T: VariableBase
        {
            lock (m_VarObjectLock)
            {
                EnqueueClassObject(item);
#if UNITY_EDITOR
                Type t = item.GetType();
                if (VarObjectInspectorDic.ContainsKey(t))
                {
                    VarObjectInspectorDic[t]--;
                    if (VarObjectInspectorDic[t]==0)
                    {
                        VarObjectInspectorDic.Remove(t);
                    }
                }
#endif
            }
        }

        #endregion

        public override void Shutdown()
        {
            PoolManager.Dispose();
        }


        /// <summary>
        /// �ͷ������ؼ��
        /// </summary>
        [SerializeField]
        public int ReleaseClassObjectInterval = 30;

        /// <summary>
        /// �´��ͷ����������ʱ��
        /// </summary>
        private float m_ReleaseClassObjectNextRunTime = 0f;

        /// <summary>
        /// �ͷ�AssetBundle���
        /// </summary>
        [SerializeField]
        public int ReleaseResourceInterval = 60;

        /// <summary>
        /// �´��ͷ�AssetBundle����ʱ��
        /// </summary>
        private float m_ReleaseAssetBundleNextRunTime = 0f;

        /// <summary>
        /// �ͷ�Asset�ؼ��
        /// </summary>
        [SerializeField]
        public int ReleaseAssetInterval = 120;

        /// <summary>
        /// �´��ͷ�Asset������ʱ��
        /// </summary>
        private float m_ReleaseAssetNextRunTime = 0;
        
        /// <summary>
        /// ��ʾ������Դ��
        /// </summary>
        [SerializeField]
        public bool ShowAssetPool = false;

        public void OnUpdate()
        {
            if (Time.time> m_ReleaseClassObjectNextRunTime+ ReleaseClassObjectInterval)
            {
                m_ReleaseClassObjectNextRunTime = Time.time;
                PoolManager.ReleaseClassObjectPool();
                GameEntry.Log(LogCategory.Normal, "�ͷ�������");
            }
            if (Time.time > m_ReleaseAssetBundleNextRunTime + ReleaseResourceInterval)
            {
                m_ReleaseAssetBundleNextRunTime = Time.time;
#if !DISABLE_ASSETBUNDLE
                 PoolManager.ReleaseAssetBundlePool();
                 GameEntry.Log(LogCategory.Normal, "�ͷ�AssetBundle�� ʱ����"+ ReleaseResourceInterval);
#endif

            }
            if (Time.time > m_ReleaseAssetNextRunTime + ReleaseAssetInterval)
            {
                m_ReleaseAssetNextRunTime = Time.time;
#if !DISABLE_ASSETBUNDLE
                PoolManager.ReleaseAssetPool();
                GameEntry.Log(LogCategory.Normal, "�ͷ�Asset��");
#endif
                if (LuaManager.luaEnv == null)
                {
                    Debug.Log("lua����ʧ��");
                }else
                LuaManager.luaEnv.FullGc();//����lua�пɻ��յĶ���


                Resources.UnloadUnusedAssets();//ɾ�����õ���Դ
            }
        }
        /// <summary>
        /// ����ط���
        /// </summary>
        [SerializeField]
        public GameObjectPoolEntity[] m_GameObjectPoolGroups;
       

        /// <summary>
        /// ��ʼ����Ϸ����Ķ����
        /// </summary>
        private void InitGameObjectPool()
        {
            StartCoroutine(PoolManager.GameObjectPool.Init(m_GameObjectPoolGroups, transform));
            m_InstanceRsourceDic = new Dictionary<int, ResourceEntity>();
        }

        /// <summary>
        /// �Ӷ�����л�ȡ����
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="prefab"></param>
        /// <param name="onComplete"></param>
        public void GameObjectSpawn(byte poolId, Transform prefab, System.Action<Transform> onComplete)
        {
            PoolManager.GameObjectPool.Spawn(poolId, prefab, onComplete);
        }
        /// <summary>
        /// �Ӷ�����л�ȡ����[����]
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="prefab"></param>
        /// <param name="onComplete"></param>
        public void GameObjectSpawn(int prefabId, BaseAction<Transform> onComplete)
        {
            PoolManager.GameObjectPool.Spawn(prefabId, onComplete);
        }

        /// <summary>
        /// ����س�
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="instance"></param>
        public void GameObjectDespawn(byte poolId, Transform instance)
        {
            PoolManager.GameObjectPool.Despawn(poolId, instance);
        }
        /// <summary>
        /// ����س�
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="instance"></param>
        public void GameObjectDespawn(Transform instance)
        {
            PoolManager.GameObjectPool.Despawn(instance);
        }

        /// <summary>
        /// �����ֵ䣨Ϊ�˳�����������ã�
        /// </summary>
        public Dictionary<string, ResourceEntity> FontDic
        {
            private set;
            get;
        }
#region ʵ������ͷ�����Դ���ͷ�
        /// <summary>
        /// ��¡������ʵ����Դ�ֵ�
        /// </summary>
        private Dictionary<int, ResourceEntity> m_InstanceRsourceDic;

        /// <summary>
        /// ע�ᵽʵ���ֵ�
        /// </summary>
        /// <param name="instanceId"></param>
        /// <param name="resourceEntity"></param>
        public void RegisterInstanceResource(int instanceId,ResourceEntity resourceEntity)
        {
            //Debug.Log("ע�᣺" + instanceId+"=="+ resourceEntity.ResourceName);
            m_InstanceRsourceDic[instanceId] = resourceEntity;
        }
        /// <summary>
        /// �ͷ�ʵ����Դ
        /// </summary>
        /// <param name="instanceId"></param>
        public void ReleaseInstanceResource(int instanceId)
        {
            ResourceEntity resourceEntity = null;
            if (m_InstanceRsourceDic.TryGetValue(instanceId,out resourceEntity))
            {
#if DISABLE_ASSETBUNDLE
                resourceEntity.Target = null;
                GameEntry.Pool.EnqueueClassObject(resourceEntity);
#else
                UnspawnResourceEntity(resourceEntity);
#endif
                m_InstanceRsourceDic.Remove(instanceId);
            }
        }
        /// <summary>
        /// ��Դʵ��س�
        /// </summary>
        /// <param name="resourceEntity"></param>
        private void UnspawnResourceEntity(ResourceEntity entity)
        {

            var curr = entity.DependsResourceList.First;

            while (curr!=null)
            {
                UnspawnResourceEntity(curr.Value);
                curr = curr.Next;
            }
            GameEntry.Pool.PoolManager.AssetPool[entity.Category].Unspawn(entity.ResourceName);
        }

#endregion
    }
}

