using UnityEngine;
using System.Collections;
using DG.Tweening;

/// <summary>
/// 
/// </summary>
public class CameraCtrl : MonoBehaviour
{
    public static CameraCtrl Instance;


    void Awake()
    {
        Instance = this;
    }

    void Start()
    {

    }

    /// <summary>
    /// �����������ת
    /// </summary>
    /// <param name="type">0=�� 1=��</param>
    public void SetCameraRotate(int type)
    {
        transform.Rotate(0, 80 * Time.deltaTime * (type == 0 ? -1 : 1), 0);
    }

}