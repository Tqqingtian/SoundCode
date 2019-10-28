using PathologicalGames;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// �����ʵ��
    /// </summary>
    [System.Serializable]
    public class GameObjectPoolEntity
    {
        /// <summary>
        /// ����ر��
        /// </summary>
        public byte PoolId;
        /// <summary>
        /// ����ص�����
        /// </summary>
        public string PoolName;
        ///// <summary>
        ///// Ԥ��������
        ///// </summary>
        //public int PreloadAmount = 0; 
        /// <summary>
        /// �Ƿ�������ģʽ
        /// </summary>
        public bool CullDespawned = true;
        /// <summary>
        /// �����Զ����� ��������
        /// </summary>
        public int CullAbove = 5;
        /// <summary>
        /// �೤ʱ������һ��
        /// </summary>
        public int CullDelay = 2;
        /// <summary>
        /// ÿ��������
        /// </summary>
        public int CullMaxPerPass = 2;

        /// <summary>
        /// �����
        /// </summary>
        public SpawnPool Pool;

    }
}

