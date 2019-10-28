/********************************     
* 创建时间：2019-05-24 00:55:51   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// 系统事件编号（系统事件编号 采用4位 1001（10表示模块 01表示编号））
    /// </summary>
    public class SysEventId 
    {

        /// <summary>
        /// 加载表格完成
        /// </summary>
        public const ushort LoadDataTableComplete = 1001;

        /// <summary>
        /// 加载单一表格完成
        /// </summary>
        public const ushort LoadOneDataTableComplete = 1002;
        
        /// <summary>
        /// 加载lua表格完成
        /// </summary>
        public const ushort LoadLuaDataTableComplete = 1003;

        /// <summary>
        /// 加载进度条更新
        /// </summary>
        public const ushort LoadingProgressChange = 1101;

        /// <summary>
        /// 检查版本更新开始下载
        /// </summary>
        public const ushort CheckVersionBeginDownload = 1201;

        /// <summary>
        /// 检查版本更新下载资源中
        /// </summary>
        public const ushort CheckVersionBeginDownloadUpdate = 1202;
        
        /// <summary>
        /// 检查版本更新下载资源完毕
        /// </summary>
        public const ushort CheckVersionBeginDownloadComplete = 1203;

        /// <summary>
        /// 预加载开始
        /// </summary>
        public const ushort PreloadBegin = 1204;

        /// <summary>
        /// 预加载中
        /// </summary>
        public const ushort PreloadUpdate = 1205;

        /// <summary>
        /// 预加载结束
        /// </summary>
        public const ushort PreloadComplete = 1206;
        
        
        /// <summary>
        /// 关闭检查版本ui
        /// </summary>
        public const ushort CloseCheckVersionUI = 1207;
    }

}
