/********************************     
* 创建时间：2019-05-24 22:37:32   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// http请求的回调数
    /// </summary>
    public class HttpCallBackArgs : EventArgs
    {
        /// <summary>
        /// 是否有错
        /// </summary>
        public bool HasError;
        
        /// <summary>
        /// 返回值
        /// </summary>
        public string Value;

        /// <summary>
        /// 字节数据
        /// </summary>
        public byte[] Data;
    }
}

