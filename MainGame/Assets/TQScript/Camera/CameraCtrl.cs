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
    /// ÉèÖÃÉãÏñ»úĞı×ª
    /// </summary>
    /// <param name="type">0=×ó 1=ÓÒ</param>
    public void SetCameraRotate(int type)
    {
        transform.Rotate(0, 80 * Time.deltaTime * (type == 0 ? -1 : 1), 0);
    }

}