using System;
using System.Collections;
using System.Collections.Generic;
using PathologicalGames;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 游戏对象的对象池
    /// </summary>
    public class GameObjectPool : IDisposable
    {
        /// <summary>
        /// 游戏物体对象池
        /// </summary>
        private Dictionary<byte, GameObjectPoolEntity> m_SpawnPoolDic;

        /// <summary>
        /// 实例id对应对象池id
        /// </summary>
        private Dictionary<int, byte> m_InstanceIdPoolIdDic;

        /// <summary>
        /// 空闲预设池队列 相当于对这个预设池再加了层池
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
        /// 当对象池物体创建时候
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
    

            //注册
            GameEntry.Pool.RegisterInstanceResource(obj.GetInstanceID(), resourceEntity);
            return obj;
        }
        /// <summary>
        /// 当对象池物体销毁的时候
        /// </summary>
        public void DestroyDelegate(GameObject instance)
        {
            UnityEngine.Object.Destroy(instance);
            GameEntry.Resource.ResourceLoaderManager.UnLoadGameObject(instance);
        }

        #region Init 初始化

        /// <summary>
        /// 初始化有戏物体对象池
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
                //创建对象池
                PathologicalGames.SpawnPool pool = PathologicalGames.PoolManager.Pools.Create(entity.PoolName);
                pool.group.parent = parent;
                pool.group.localPosition = Vector3.zero;
                entity.Pool = pool;

                m_SpawnPoolDic[entity.PoolId] = entity;
            }
        }

        #endregion
        #region 从对象池中获取对象
        /// <summary>
        /// 从对象池中获取对象 可以废弃
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="prefab"></param>
        /// <param name="onComplete"></param>
        public void Spawn(byte poolId, Transform prefab, System.Action<Transform> onComplete)
        {

            GameObjectPoolEntity entity = m_SpawnPoolDic[poolId];
            //拿到预设池
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
        /// 从对象池中获取对象
        /// </summary>
        /// <param name="prefabId"></param>
        /// <param name="onComplete"></param>
        public void Spawn(int prefabId, BaseAction<Transform> onComplete)
        {
            //拿到预设表数据
            Sys_PrefabEntity entity = GameEntry.DataTable.DataTableManager.Sys_PrefabDBModel.Get(prefabId);
           
            if (entity == null)
            {
                Debug.LogError("预设不存在");
                return;
            }
            GameEntry.Resource.ResourceLoaderManager.LoadMainAsset((AssetCategory)entity.AssetCategory, entity.AssetPath, (ResourceEntity resourseEntity) =>
              {
                  //拿到对象池
                  GameObjectPoolEntity gameObjectPoolEntity = m_SpawnPoolDic[entity.PoolId];
                  
                  Transform prefab = ((GameObject)resourseEntity.Target).transform;

                  //使用预设编号 当前池id
                  PrefabPool prefabPool = gameObjectPoolEntity.Pool.GetPrefabPool(entity.Id);

                  if (prefabPool == null)
                  {
                      //先去队列里找 空闲的池
                      if (m_PrefabPoolQueue.Count > 0)
                      {
                          Debug.LogError("从队列里取");
                          prefabPool = m_PrefabPoolQueue.Dequeue();

                          prefabPool.PrefabPoolId = entity.Id;//预设池编号设置
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
                          //预设池加入队列
                          pool.PrefabPoolId = 0;
                          gameObjectPoolEntity.Pool.RemovePrefabPool(pool);
                          m_PrefabPoolQueue.Enqueue(pool);
                      };
                      //这些属性要从表格中读取
                      prefabPool.cullDespawned = gameObjectPoolEntity.CullDespawned;
                      prefabPool.cullAbove = gameObjectPoolEntity.CullAbove;
                      prefabPool.cullDelay = gameObjectPoolEntity.CullDelay;
                      prefabPool.cullMaxPerPass = gameObjectPoolEntity.CullMaxPerPass;

                  }
                  if (onComplete!=null)
                  {
                      //拿到一个实例
                      Transform retTrans = gameObjectPoolEntity.Pool.Spawn(prefab, resourseEntity);
                      int instanceID = retTrans.gameObject.GetInstanceID();
                      m_InstanceIdPoolIdDic[instanceID] = entity.PoolId;
                      onComplete(retTrans);

                  }

              });
        }

        #endregion

        #region 回池
        /// <summary>
        /// 回池
        /// </summary>
        /// <param name="poolId"></param>
        /// <param name="instance"></param>
        public void Despawn(byte poolId,Transform instance)
        {
            GameObjectPoolEntity entity = m_SpawnPoolDic[poolId];

            entity.Pool.Despawn(instance);
        }

        /// <summary>
        /// 回池
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

