/********************************     
* 创建时间：2019-06-25 22:44:25   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ui分组
    /// </summary>
    [System.Serializable]
    public class UIGroup 
    {
        /// <summary>
        /// 分组编号
        /// </summary>
        public byte Id;

        /// <summary>
        /// 基础排序
        /// </summary>
        public ushort BaseOrder;

        /// <summary>
        /// 
        /// </summary>
        public Transform Group;
    }
}

