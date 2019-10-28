//===================================================
//作    者：边涯  http://www.u3dol.com  QQ群：87481002
//创建时间：2015-12-01 21:45:22
//备    注：
//===================================================
using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using DG.Tweening;

public static class GameObjectUtil 
{
    /// <summary>
    /// 获取或创建组建
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="obj"></param>
    /// <returns></returns>
    public static T GetOrCreatComponent<T>(this GameObject obj) where T:MonoBehaviour
    {
        T t = obj.GetComponent<T>();
        if (t == null)
        {
            t = obj.AddComponent<T>();
        }
        return t;
    }
    public static void SetNull(this MonoBehaviour[] arr)
    {
        if (arr != null)
        {
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = null;
            }
            arr = null;
        }
    }
    public static void SetNull(this Transform[] arr)
    {
        if (arr != null)
        {
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = null;
            }
            arr = null;
        }
    }
    public static void SetNull(this Sprite[] arr)
    {
        if (arr != null)
        {
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = null;
            }
            arr = null;
        }
    }

    public static void SetLayer(this GameObject obj,string layerName)
    {
        Transform[] TRA = obj.transform.GetComponentsInChildren<Transform>();
        for (int i = 0; i < TRA.Length; i++)
        {
            TRA[i].gameObject.layer = LayerMask.NameToLayer(layerName);
        }
    }
    /// <summary>
    /// 设置父物体（拓展）
    /// </summary>
    /// <param name="obj"></param>
    /// <param name="parent"></param>
    public static void SetParent(this GameObject obj,Transform parent)
    {
        obj.transform.SetParent(parent);
        obj.transform.localPosition = Vector3.zero;
        obj.transform.localScale = Vector3.one;
        obj.transform.localEulerAngles = Vector3.zero;
    }
    /// <summary>
    /// text拓展
    /// </summary>
    /// <param name="txtObj"></param>
    /// <param name="text"></param>
    public static void SetText(this Text txtObj,string text,bool isAnima=false,ScrambleMode scrambleMode=ScrambleMode.None)
    {
        if (txtObj != null)
        {
            if (isAnima)
            {
                txtObj.text = "";
                txtObj.DOText(text, 0.3f, scrambleMode: scrambleMode);
            }
            else
            {
                txtObj.text = text;
            }
            
        }
    }

    public static void SetSliderValue(this Slider sliderObj,float value)
    {
        if(sliderObj != null)
        {
            sliderObj.value = value;
        }
    }
    public static void SetImage(this Image sliderObj, Sprite value)
    {
        if (sliderObj != null)
        {
            sliderObj.sprite = value;
        }
    }
}