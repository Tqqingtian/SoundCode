using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#region RoleState��ɫ״̬

/// <summary>
/// ��ɫ״̬
/// </summary>
public enum RoleState
{
    /// <summary>
    /// δ����
    /// </summary>
    None = 0,
    /// <summary>
    /// ����
    /// </summary>
    Idle = 1,
    /// <summary>
    /// ����
    /// </summary>
    Run = 2,
    /// <summary>
    /// ����
    /// </summary>
    Attack = 3,
    /// <summary>
    /// ����
    /// </summary>
    Hurt = 4,
    /// <summary>
    /// ����
    /// </summary>
    Die = 5,
    /// <summary>
    /// ѡ��
    /// </summary>
    Select = 11
}

#endregion

#region RoleType ��ɫ����
/// <summary>
/// ��ɫ����
/// </summary>
public enum RoleType
{
    /// <summary>
    /// δ����
    /// </summary>
    None = 0,
    /// <summary>
    /// ��ǰ���
    /// </summary>
    MainPlayer = 1,
    /// <summary>
    /// ��
    /// </summary>
    Monster = 2,
    /// <summary>
    /// �������
    /// </summary>
    OTherRole = 3
}
#endregion