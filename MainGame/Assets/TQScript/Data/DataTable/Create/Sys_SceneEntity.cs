
//===================================================
//作    者：TQ 
//创建时间：2019-11-15 00:52:52
//备    注：此代码为工具生成 请勿手工修改
//===================================================
using System.Collections;
using TQ;

/// <summary>
/// Sys_Scene实体
/// </summary>
public partial class Sys_SceneEntity : DataTableEntityBase
{
    /// <summary>
    /// 名称
    /// </summary>
    public string SceneName;

    /// <summary>
    /// 背景音乐
    /// </summary>
    public int BGMId;

    /// <summary>
    /// 场景类型(0=登录1=选人2=PVP)
    /// </summary>
    public int SceneType;

}
