/********************************     
* 创建时间：2019-05-24 22:36:57   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using UnityEngine;
using System.Collections;

public class DeviceUtil
{
    /// <summary>
    /// 获取设备标识符
    /// </summary>
    public static string DeviceIdentifier
    {
        get
        {
            return SystemInfo.deviceUniqueIdentifier;
        }
    }

    /// <summary>
    /// 获取设备型号
    /// </summary>
    public static string DeviceModel
    {
        get
        {
#if UNITY_IPHONE && !UNITY_EDITOR
            return UnityEngine.iOS.Device.generation.ToString();
#else
            return SystemInfo.deviceModel;
#endif
        }
    }
}