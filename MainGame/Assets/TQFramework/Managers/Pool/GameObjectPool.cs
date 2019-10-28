using System;
using System.Collections;
using System.Collections.Generic;
using PathologicalGames;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ��Ϸ����Ķ����
    /// </summary>
    public class GameObjectPool : IDisposable
    {
        /// <summary>
        /// ��Ϸ��������
        /// </summary>
        private Dictionary<byte, GameObjectPoolEntity> m_SpawnPoolDic;

        /// <summary>
        /// ʵ��id��Ӧ�����id
        /// </summary>
        private Dictionary<int, byte> m_InstanceIdPoolIdDic;

        /// <summary>
        /// ����Ԥ��ض��� �൱�ڶ����Ԥ����ټ��˲��
        /// </summary>
        private Queue<PrefabPool> m_PrefabPoolQueue;


        public GameObjectPool()
        {
            m_SpawnPoolDic = new Dictionary<byte, GameObjectPoolEntity>();
            m_InstanceIdPoolIdDic = new Dictionary<int, byte>();
            m_PrefabPoolQueue = new Queue<PrefabPool>();

            InstanceHandler.InstantiateDelegates += this.InstanceDelegate;
            InstanceHandler.DestroyDelegates += this.DestroyDelegate;
        }

        /// <summary>
        /// ����������崴��ʱ��
        /// </summary>
        /// <param name="prefab"></param>
        /// <param name="pos"></param>
        /// <param name="rot"></param>
        /// <param name="userData"></param>
        /// <returns></returns>
        private GameObject InstanceDelegate(GameObject prefab, Vector3 pos, Quaternion rot, object userData)
        {
            ResourceEntity resourceEntity = userData as ResourceEntity;
  
            GameObject obj = UnityEngine.Object.Instantiate(prefab, pos, rot) as GameObject;
    

            //ע��
            GameEntry.Pool.RegisterInstanceResource(obj.GetInstanceID(), resourceEntity);
            return obj;
        }
        /// <summary>
        /// ��������������ٵ�ʱ��
        /// </summary>
        public void DestroyDelegate(GameObject instance)
        {
            UnityEngine.Object.Destroy(instance);
            GameEntry.Resource.ResourceLoaderManager.UnLoadGameObject(instance);
        }

        #region Init ��ʼ��

        /// <summary>
        /// ��ʼ����Ϸ��������
        /// </summary>
        /// <param name="arr"></param>
        /// <param name="parent"></param>
        /// <returns></returns>
        public IEnumerator Init(GameObjectPoolEntity[] arr, Transform parent)
        {
            int len = arr.Length;
            for (int i = 0; i < len; i++)
            {
                GameObjectPoolEntity entity = arr[i];
                if (entity.Pool != null)
                {
                    UnityEngine.Object.Destroy(entity.Pool.gameObject);
                    yield return null;
                    entity.Pool = null;

                }
                //���������
                PathologicalGames.SpawnPool pool = PathologicalGames.PoolManager.Pools.Create(entity.PoolName);
                pool.group.parent = parent;
                pool.group.localPosition = Vector3.zero;
                entity.Pool = pool;

                m_SpawnPoolDic[entity.PoolId] = entity;
            }
        }

        #endregion
        #region �Ӷ�����л�ȡ����
        /// <summary>
        /// �Ӷ�����л�ȡ���� ���Է���
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="prefab"></param>
        /// <param name="onComplete"></param>
        public void Spawn(byte poolId, Transform prefab, System.Action<Transform> onComplete)
        {

            GameObjectPoolEntity entity = m_SpawnPoolDic[poolId];
            //�õ�Ԥ���
            PathologicalGames.PrefabPool prefabPool = entity.Pool.GetPrefabPool(prefab);


            if (prefabPool == null)
            {
                prefabPool = new PathologicalGames.PrefabPool(prefab);
                prefabPool.cullDespawned = entity.CullDespawned;
                prefabPool.cullAbove = entity.CullAbove;
                prefabPool.cullDelay = entity.CullDelay;

                prefabPool.cullMaxPerPass = entity.CullMaxPerPass;
                entity.Pool.CreatePrefabPool(prefabPool);
            }
            if (onComplete != null)
            {
                onComplete(entity.Pool.Spawn(prefab));
            }
        }
        /// <summary>
        /// �Ӷ�����л�ȡ����
        /// </summary>
        /// <param name="prefabId"></param>
        /// <param name="onComplete"></param>
        public void Spawn(int prefabId, BaseAction<Transform> onComplete)
        {
            //�õ�Ԥ�������
            Sys_PrefabEntity entity = GameEntry.DataTable.DataTableManager.Sys_PrefabDBModel.Get(prefabId);
           
            if (entity == null)
            {
                Debug.LogError("Ԥ�費����");
                return;
            }
            GameEntry.Resource.ResourceLoaderManager.LoadMainAsset((AssetCategory)entity.AssetCategory, entity.AssetPath, (ResourceEntity resourseEntity) =>
              {
                  //�õ������
                  GameObjectPoolEntity gameObjectPoolEntity = m_SpawnPoolDic[entity.PoolId];
                  
                  Transform prefab = ((GameObject)resourseEntity.Target).transform;

                  //ʹ��Ԥ���� ��ǰ��id
                  PrefabPool prefabPool = gameObjectPoolEntity.Pool.GetPrefabPool(entity.Id);

                  if (prefabPool == null)
                  {
                      //��ȥ�������� ���еĳ�
                      if (m_PrefabPoolQueue.Count > 0)
                      {
                          Debug.LogError("�Ӷ�����ȡ");
                          prefabPool = m_PrefabPoolQueue.Dequeue();

                          prefabPool.PrefabPoolId = entity.Id;//Ԥ��ر������
                          gameObjectPoolEntity.Pool.AddPrefabPool(prefabPool);

                          prefabPool.prefab = prefab;
                          prefabPool.prefabGO = prefab.gameObject;
                          prefabPool.AddPrefabToDic(prefab.name, prefab);
                      }
                      else
                      {
                          prefabPool = new PrefabPool(prefab, entity.Id);
                          gameObjectPoolEntity.Pool.CreatePrefabPool(prefabPool, resourseEntity);
                      }
                      prefabPool.OnPrefabPoolClear = (PrefabPool pool) =>
                      {
                          //Ԥ��ؼ������
                          pool.PrefabPoolId = 0;
                          gameObjectPoolEntity.Pool.RemovePrefabPool(pool);
                          m_PrefabPoolQueue.Enqueue(pool);
                      };
                      //��Щ����Ҫ�ӱ���ж�ȡ
                      prefabPool.cullDespawned = gameObjectPoolEntity.CullDespawned;
                      prefabPool.cullAbove = gameObjectPoolEntity.CullAbove;
                      prefabPool.cullDelay = gameObjectPoolEntity.CullDelay;
                      prefabPool.cullMaxPerPass = gameObjectPoolEntity.CullMaxPerPass;

                  }
                  if (onComplete!=null)
                  {
                      //�õ�һ��ʵ��
                      Transform retTrans = gameObjectPoolEntity.Pool.Spawn(prefab, resourseEntity);
                      int instanceID = retTrans.gameObject.GetInstanceID();
                      m_InstanceIdPoolIdDic[instanceID] = entity.PoolId;
                      onComplete(retTrans);

                  }

              });
        }

        #endregion

        #region �س�
        /// <summary>
        /// �س�
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="instance"></param>
        public void Despawn(byte poolId,Transform instance)
        {
            GameObjectPoolEntity entity = m_SpawnPoolDic[poolId];

            entity.Pool.Despawn(instance);
        }

        /// <summary>
        /// �س�
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="instance"></param>
        public void Despawn(Transform instance)
        {
            int instanceID = instance.gameObject.GetInstanceID();
            byte poolId = m_InstanceIdPoolIdDic[instanceID];
            m_InstanceIdPoolIdDic.Remove(instanceID);
            Despawn(poolId, instance);
        }

        #endregion
        public void Dispose()
        {
            m_SpawnPoolDic.Clear();
        }
    }
}

