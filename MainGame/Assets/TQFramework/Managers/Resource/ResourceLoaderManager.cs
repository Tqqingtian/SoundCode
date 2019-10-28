using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// ��Դ���ع�����
    /// </summary>
    public class ResourceLoaderManager : ManagerBase,IDisposable
    {
        /// <summary>
        /// ��Դ��Ϣ�ֵ�
        /// </summary>
        private Dictionary<AssetCategory, Dictionary<string, AssetEntity>> m_AssetInfoDic;

        /// <summary>
        /// ��Դ������������
        /// </summary>
        private LinkedList<AssetBundleLoaderRoutine> m_AssetBundleLoadList; 

        /// <summary>
        /// ��Դ������������
        /// </summary>
        private LinkedList<AssetLoaderRoutine> m_AssetLoaderList;

        public ResourceLoaderManager()
        {
            m_AssetInfoDic = new Dictionary<AssetCategory, Dictionary<string, AssetEntity>>();
            
            //ȷ���ֵ�ʵ����
            var enumerator = Enum.GetValues(typeof(AssetCategory)).GetEnumerator();
            while (enumerator.MoveNext())
            {
                AssetCategory assetCategory = (AssetCategory)enumerator.Current;
                m_AssetInfoDic[assetCategory] = new Dictionary<string, AssetEntity>();
            }
            m_AssetBundleLoadList = new LinkedList<AssetBundleLoaderRoutine>();
            m_AssetLoaderList = new LinkedList<AssetLoaderRoutine>();
        }
        #region GetAssetEntity ������Դ�������Դ·����ȡ��Դ��Ϣ
        /// <summary>
        /// ������Դ�������Դ·����ȡ��Դ��Ϣ
        /// </summary>
        /// <param name="assetCategory"></param>
        /// <param name="assetFullName"></param>
        /// <returns></returns>
        public AssetEntity GetAssetEntity(AssetCategory assetCategory, string assetFullName)
        {
            Dictionary<string, AssetEntity> dicCategory = null;
            if (m_AssetInfoDic.TryGetValue(assetCategory,out dicCategory))
            {
                AssetEntity entity = null;
                if (dicCategory.TryGetValue(assetFullName,out entity))
                {
                    return entity;
                }
            }
            GameEntry.LogError("{0}������", assetFullName);
            return null;
        }
        #endregion
        #region InitAssetInfo ��ʼ����Դ��Ϣ
        /// <summary>
        /// ��ʼ����Դ��Ϣ
        /// </summary>
        public void InitAssetInfo()
        {
            Debug.Log("��ʼ����Դ��Ϣ");
            byte[] buffer = GameEntry.Resource.ResourceManager.LocalAssetsManager.GetFileBuffer(ConstDefine.AssetInfoName);
            if (buffer==null)
            {
                //�����д��û�� ��ô�ʹ�ֻ��ȡ��ȡ
                GameEntry.Resource.ResourceManager.StreamingAssetsManager.ReadAssetBundle(ConstDefine.AssetInfoName, (byte[] buff) =>
                 {
                     if (buff==null)
                     {
                         //���ֻ��ȡҲû�� ��cdn�ϻ�ȡ
                         string url = string.Format("{0}{1}", GameEntry.Data.SysDataManager.CurrChannelConfig.RealSourceUrl, ConstDefine.AssetInfoName);

                         GameEntry.Http.SendData(url, OnLoadAssetInfoFromCDN, isGetData: true);
                     }
                     else
                     {
                         InitAssetInfo(buff);
                     }

                 });

            }
            else
            {
                InitAssetInfo(buffer);
            }

        }

        #endregion
        /// <summary>
        /// �����е���Դ��
        /// </summary>
        private Dictionary<string, LinkedList<Action<AssetBundle>>> m_LoadingAssetBundle = new Dictionary<string, LinkedList<Action<AssetBundle>>>();

        #region LoadAssetBundle ������Դ��
        /// <summary>
        /// ������Դ��
        /// </summary>
        /// <param name="assetbundlePath"></param>
        /// <param name="onUpdate"></param>
        /// <param name="onComplete"></param>
        public void LoadAssetBundle(string assetbundlePath, Action<float> onUpdate = null, Action<AssetBundle> onComplete = null)
        {
            //1.�ж���Դ�Ƿ������AssetBundlePool
            ResourceEntity assetBundleEntity = GameEntry.Pool.PoolManager.AssetBundlePool.Spawn(assetbundlePath);
            if (assetBundleEntity != null)
            {
                //˵����Դ����Դ���д���
                AssetBundle assetBundle = assetBundleEntity.Target as AssetBundle;
                if (onComplete != null)
                {
                    
                    onComplete(assetBundle);
                }
                return;
            }
            LinkedList<Action<AssetBundle>> lst = null;
            if (m_LoadingAssetBundle.TryGetValue(assetbundlePath, out lst))
            {
                //������ڼ����е�bundle ��ί�м����Ӧ������ Ȼ��ֱ�ӷ���
                lst.AddLast(onComplete);
                return;
            }
            else
            {
                lst = GameEntry.Pool.DequeueClassObject<LinkedList<Action<AssetBundle>>>();
                lst.AddLast(onComplete);
                m_LoadingAssetBundle[assetbundlePath] = lst;
            }

            AssetBundleLoaderRoutine routine = GameEntry.Pool.DequeueClassObject<AssetBundleLoaderRoutine>();
            if (routine == null)
            {
                routine = new AssetBundleLoaderRoutine();
            }
            //�ӵ�����ʼѭ��
            m_AssetBundleLoadList.AddLast(routine);

            routine.LoadAssetBundle(assetbundlePath);

            routine.OnAssetBundleCreateUpate = (float progress) =>
            {
                if (onUpdate != null)
                {
                    onUpdate(progress);
                }
            };
            routine.OnLoadAssetBundleComplete = (AssetBundle assetbundle) =>
              {
                  //����Դ��ע�ᵽ����
                  assetBundleEntity = GameEntry.Pool.DequeueClassObject<ResourceEntity>();
                  assetBundleEntity.ResourceName = assetbundlePath;
                  assetBundleEntity.IsAssetBundle = true;
                  assetBundleEntity.Target = assetbundle;
                  GameEntry.Pool.PoolManager.AssetBundlePool.Register(assetBundleEntity);

                  for (LinkedListNode<Action<AssetBundle>> curr = lst.First; curr != null; curr = curr.Next)
                  {
                      if (curr.Value != null)
                      {
                          curr.Value(assetbundle);
                      }
                  }
                  lst.Clear();//һ��Ҫ���
                  GameEntry.Pool.EnqueueClassObject(lst);

                  m_LoadingAssetBundle.Remove(assetbundlePath); //��Դ������� �Ӽ������ֵ��Ƴ�

                  //����ѭ�� �س�
                  m_AssetBundleLoadList.Remove(routine);
                  GameEntry.Pool.EnqueueClassObject(routine);
              };
        }
        #endregion



        /// <summary>
        /// ��������Դ
        /// </summary>
        /// <param name="assetCategory">��Դ����</param>
        /// <param name="assetFullName"></param>
        /// <param name="onComplete"></param>
        public void LoadMainAsset(AssetCategory assetCategory, string assetFullName, BaseAction<ResourceEntity> onComplete=null)
        {
            MainAssetLoaderRoutine routine = GameEntry.Pool.DequeueClassObject<MainAssetLoaderRoutine>();
            routine.load(assetCategory, assetFullName, (ResourceEntity resEntity) =>
              {
                  if (onComplete!=null)
                  {
                      onComplete(resEntity);
                  }
              });
        }
        /// <summary>
        /// �ͷ���Դ
        /// </summary>
        /// <param name="gameObject"></param>
        public void UnLoadGameObject(GameObject gameObject)
        {
            GameEntry.Pool.ReleaseInstanceResource(gameObject.GetInstanceID());
        }

        #region OnLoadAssetInfoFromCDN ������Դ��Ϣ�ص�
        /// <summary>
        /// ������Դ��Ϣ�ص�
        /// </summary>
        /// <param name="args"></param>

        private void OnLoadAssetInfoFromCDN(HttpCallBackArgs args)
        {
            if (!args.HasError)
            {
                InitAssetInfo(args.Data);
            }
            else
            {
                GameEntry.Log(LogCategory.Resource, args.Value);
            }
        }

        #endregion

        #region InitAssetInfo ��ʼ����Դ��Ϣ
        /// <summary>
        /// ��ʼ����Դ��Ϣ
        /// </summary>
        private void InitAssetInfo(byte[] buffer)
        {
            buffer = ZlibHelper.DeCompressBytes(buffer);
            MMO_MemoryStream ms = new MMO_MemoryStream(buffer);
   
            int len = ms.ReadInt();
            int depLen = 0;
            for (int i = 0; i < len; i++)
            {
                AssetEntity entity = new AssetEntity();
                entity.Category = (AssetCategory)ms.ReadByte();
                entity.AssetFullName = ms.ReadUTF8String();
                entity.AssetBundleName = ms.ReadUTF8String();
                
                depLen = ms.ReadInt();
                if (depLen>0)
                {
                    entity.DependsAssetList = new List<AssetDependsEntity>(depLen);
                    for (int j = 0; j < depLen; j++)
                    {
                        AssetDependsEntity assetDepends = new AssetDependsEntity();
                        assetDepends.Category = (AssetCategory)ms.ReadByte();
                        assetDepends.AssetFullName = ms.ReadUTF8String();

                        entity.DependsAssetList.Add(assetDepends);
                    }
                }

                //Debug.LogError("entity.Category=" + entity.Category);
                //Debug.LogError("entity.AssetFullName=" + entity.AssetFullName);
                m_AssetInfoDic[entity.Category][entity.AssetFullName] = entity;

            }
        }
        #endregion

        #region LoadAsset ����Դ���м�����Դ��
        /// <summary>
        /// �����е���Դ
        /// </summary>
        private Dictionary<string, LinkedList<Action<UnityEngine.Object>>> m_LoadingAsset = new Dictionary<string, LinkedList<Action<UnityEngine.Object>>>();

        /// <summary>
        /// ����Դ���м�����Դ��
        /// </summary>
        /// <param name="assetbundlePath"></param>
        /// <param name="onUpdate"></param>
        /// <param name="onComplete"></param>
        public void LoadAsset(string assetName, AssetBundle assetBundle, Action<float> onUpdate = null, Action<UnityEngine.Object> onComplete = null)
        {
            LinkedList<Action<UnityEngine.Object>> lst = null;
            if (m_LoadingAsset.TryGetValue(assetName,out lst))
            {
                //����������� ��ֱ�ӷ���
                lst.AddLast(onComplete);
                return;
            }
            else
            {
                lst = GameEntry.Pool.DequeueClassObject<LinkedList<Action<UnityEngine.Object>>>();
                lst.AddLast(onComplete);
                m_LoadingAsset[assetName] = lst;
            }


            AssetLoaderRoutine routine = GameEntry.Pool.DequeueClassObject<AssetLoaderRoutine>();

            if (routine == null)
            {
                routine = new AssetLoaderRoutine();
            }
           
            //�ӵ�����ʼѭ��
            m_AssetLoaderList.AddLast(routine);

            routine.LoadAsset(assetName,assetBundle);

            routine.OnAssetUpdate = (float progress) =>
            {
                if (onUpdate != null)
                {
                    onUpdate(progress);
                }
            };

            routine.OnLoadAssetComplete = (UnityEngine.Object obj) =>
            {
                for (LinkedListNode<Action<UnityEngine.Object>> curr=lst.First;curr!=null;curr=curr.Next)
                {
                    if (curr.Value!=null)
                    {
                        curr.Value(obj);
                    }
                }
                lst.Clear();

                GameEntry.Pool.EnqueueClassObject(lst);
                m_LoadingAsset.Remove(assetName);//��Դ������� �Ƴ�
                //����ѭ�� �س�
                m_AssetLoaderList.Remove(routine);
                GameEntry.Pool.EnqueueClassObject(routine);
            };
        }
        #endregion
        /// <summary>
        /// ����
        /// </summary>
        public void OnUpdate()
        {
            for (LinkedListNode<AssetBundleLoaderRoutine> curr = m_AssetBundleLoadList.First; curr != null; curr = curr.Next)
            {
                curr.Value.OnUpdate();
            }
            for (LinkedListNode<AssetLoaderRoutine> curr = m_AssetLoaderList.First; curr != null; curr = curr.Next)
            {
                curr.Value.OnUpdate();
            }
        }

        public void Dispose()
        {

        }
    }
}

