using System;
using System.Collections.Generic;
using System.Linq;

/// <summary>
/// �˻�ʵ��
/// </summary>
public class RetAccountEntity
{
    #region ʵ������

    /// <summary>
    /// ���
    /// </summary>
    public int? Id { get; set; }

    /// <summary>
    /// ״̬
    /// </summary>
    //public EnumEntityStatus Status { get; set; }

    /// <summary>
    ///�û��� 
    /// </summary>
    public string UserName { get; set; }

    /// <summary>
    ///���� 
    /// </summary>
    public string Pwd { get; set; }

    /// <summary>
    ///�ֻ� 
    /// </summary>
    public string Mobile { get; set; }

    /// <summary>
    ///���� 
    /// </summary>
    public string Mail { get; set; }

    /// <summary>
    ///Ԫ�� 
    /// </summary>
    //public int Money { get; set; }
    public int YuanBao { get; set; }

    /// <summary>
    ///������ 
    /// </summary>
    public short ChannelId { get; set; }

    /// <summary>
    ///����¼������Id 
    /// </summary>
    //public int LastLogOnServerId { get; set; }
    public int LastServerId { get; set; }
    /// <summary>
    ///����¼���������� 
    /// </summary>
    //public string LastLogOnServerName { get; set; }
    public string LastServerName { get; set; }
    /// <summary>
    ///����¼������ʱ�� 
    /// </summary>
    public DateTime LastLogOnServerTime { get; set; }

    /// <summary>
    ///����¼��ɫId 
    /// </summary>
    public int LastLogOnRoleId { get; set; }

    /// <summary>
    ///����¼��ɫ���� 
    /// </summary>
    public string LastLogOnRoleNickName { get; set; }

    /// <summary>
    ///����¼��ɫְҵId 
    /// </summary>
    public int LastLogOnRoleJobId { get; set; }


    public string LastServerIp { get; set; }

    public int LastServerPort { get; set; }
    /// <summary>
    ///����ʱ�� 
    /// </summary>
    public DateTime CreateTime { get; set; }

    /// <summary>
    ///����ʱ�� 
    /// </summary>
    public DateTime UpdateTime { get; set; }

    /// <summary>
    ///�豸��ʶ 
    /// </summary>
    public string DeviceIdentifier { get; set; }

    /// <summary>
    ///�豸�ͺ� 
    /// </summary>
    public string DeviceModel { get; set; }

    #endregion
}
