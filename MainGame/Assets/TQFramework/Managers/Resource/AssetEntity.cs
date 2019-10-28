/********************************     
* 创建时间：#CreateTime#   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AssetEntity 
{
    /// <summary>
    /// 资源分类
    /// </summary>
    public AssetCategory Category;

    /// <summary>
    /// 资源名称
    /// </summary>
    public string AssetName;

    /// <summary>
    /// 资源完整名称
    /// </summary>
    public string AssetFullName;

    /// <summary>
    /// 所属资源包（这个资源在那个AssetBundle）
    /// </summary>
    public string AssetBundleName;

    /// <summary>
    /// 依赖资源
    /// </summary>
    public List<AssetDependsEntity> DependsAssetList;
}
