/********************************     
* 创建时间：2019-07-04 18:48:37   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 资源包的实体信息
    /// </summary>
    public class AssetBundleInfoEntity
    {
        /// <summary>
        /// 资源包名称
        /// </summary>
        public string AssetBundleName;

        public string MD5;

        /// <summary>
        /// 文件大小（k）
        /// </summary>
        public ulong Size;

        /// <summary>
        /// 是否初始文件
        /// </summary>
        public bool IsFirstData;

        /// <summary>
        /// 是否已经加密
        /// </summary>
        public bool IsEncrypt;
    }
}
