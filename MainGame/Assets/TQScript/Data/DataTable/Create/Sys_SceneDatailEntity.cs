
//===================================================
//作    者：TQ 
//创建时间：2019-10-28 21:32:52
//备    注：此代码为工具生成 请勿手工修改
//===================================================
using System.Collections;
using TQ;

/// <summary>
/// Sys_SceneDatail实体
/// </summary>
public partial class Sys_SceneDatailEntity : DataTableEntityBase
{
    /// <summary>
    /// 场景编号
    /// </summary>
    public int SceneId;

    /// <summary>
    /// 场景路径
    /// </summary>
    public string ScenePath;

    /// <summary>
    /// 场景等级(0=必须1=重要2=不重要)
    /// </summary>
    public int SceneGrade;

}
