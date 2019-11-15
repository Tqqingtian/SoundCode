using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#region RoleState角色状态

/// <summary>
/// 角色状态
/// </summary>
public enum RoleState
{
    /// <summary>
    /// 未设置
    /// </summary>
    None = 0,
    /// <summary>
    /// 待机
    /// </summary>
    Idle = 1,
    /// <summary>
    /// 跑了
    /// </summary>
    Run = 2,
    /// <summary>
    /// 攻击
    /// </summary>
    Attack = 3,
    /// <summary>
    /// 受伤
    /// </summary>
    Hurt = 4,
    /// <summary>
    /// 死亡
    /// </summary>
    Die = 5,
    /// <summary>
    /// 选择
    /// </summary>
    Select = 11
}

#endregion

#region RoleType 角色类型
/// <summary>
/// 角色类型
/// </summary>
public enum RoleType
{
    /// <summary>
    /// 未设置
    /// </summary>
    None = 0,
    /// <summary>
    /// 当前玩家
    /// </summary>
    MainPlayer = 1,
    /// <summary>
    /// 怪
    /// </summary>
    Monster = 2,
    /// <summary>
    /// 其他玩家
    /// </summary>
    OTherRole = 3
}
#endregion