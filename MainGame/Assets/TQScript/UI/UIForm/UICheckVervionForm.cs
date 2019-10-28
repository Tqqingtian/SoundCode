using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TQ;
public class UICheckVervionForm : UIFormBase
{
    [SerializeField]
    private Text txtTip;

    [SerializeField]
    private Text txtSize;

    [SerializeField]
    private Text txtResourseVersion;

    [SerializeField]
    private Scrollbar scrollbar;

    protected override void OnInit(object userData)
    {
        base.OnInit(userData);
        //������� �ȶ���
        Init(2, 3,false, false, userData);

        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.CheckVersionBeginDownload, OnCheckVersionBeginDownload);
        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.CheckVersionBeginDownloadComplete, OnCheckVersionBeginDownloadComplete);
        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.CheckVersionBeginDownloadUpdate, OnCheckVersionBeginDownloadUpdate);

        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.PreloadBegin, OnPreloadBegin);
        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.PreloadUpdate, OnPreloadUpdate);
        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.PreloadComplete, OnPreloadComplete);

        GameEntry.Event.CommonEvent.AddEventListener(SysEventId.CloseCheckVersionUI, OnCloseCheckVersionUI);

        txtTip.gameObject.SetActive(false);
        scrollbar.gameObject.SetActive(false);
        txtSize.gameObject.SetActive(false);
        txtResourseVersion.gameObject.SetActive(false);
    }



    #region ������

    private void OnCheckVersionBeginDownload(object userData)
    {
        txtTip.gameObject.SetActive(true);
        scrollbar.gameObject.SetActive(true);
        txtSize.gameObject.SetActive(true);
        txtResourseVersion.gameObject.SetActive(true);

        txtResourseVersion.text = string.Format("��Դ�汾��{0}", GameEntry.Resource.ResourceManager.CDNVersion);
    }

    private void OnCheckVersionBeginDownloadUpdate(object userData)
    {
        BaseParams args = userData as BaseParams;

        txtTip.text = string.Format("��������{0}/{1}", args.IntParam1, args.IntParam2);

        txtSize.text = string.Format("{0:f2}/{1:f2}M", (float)args.ULongParams1/(1024*1024), (float)args.ULongParams2/(1024*1024));
        scrollbar.size = (float)args.IntParam1 / args.IntParam2;
    }

    private void OnCheckVersionBeginDownloadComplete(object userData)
    {
        Debug.LogError("�������");
    }
    #endregion

    #region Ԥ�����¼�

    private void OnPreloadBegin(object userData)
    {
        txtTip.gameObject.SetActive(true);
        scrollbar.gameObject.SetActive(true);
        txtSize.gameObject.SetActive(false);
        txtResourseVersion.text = string.Format("��Դ�汾��{0}", GameEntry.Resource.ResourceManager.CDNVersion);
    }

    private void OnPreloadUpdate(object userData)
    {
        BaseParams args = userData as BaseParams;

        txtTip.text = string.Format("���ڼ�����Դ{0:f0}%", args.FloatParam1);
        scrollbar.size = args.FloatParam1 * 0.01f;
    }

    private void OnPreloadComplete(object userData)
    {

    }

    #endregion
    /// <summary>
    /// �汾������� �رճ���ui
    /// </summary>
    /// <param name="userData"></param>
    private void OnCloseCheckVersionUI(object userData)
    {
        Destroy(gameObject);
    }

    protected override void OnBeforDestry()
    {
        base.OnBeforDestry();
        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.CheckVersionBeginDownload, OnCheckVersionBeginDownload);
        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.CheckVersionBeginDownloadComplete, OnCheckVersionBeginDownloadComplete);
        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.CheckVersionBeginDownloadUpdate, OnCheckVersionBeginDownloadUpdate);

        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.PreloadBegin, OnPreloadBegin);
        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.PreloadUpdate, OnPreloadUpdate);
        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.PreloadComplete, OnPreloadComplete);

        GameEntry.Event.CommonEvent.RemoveEventListener(SysEventId.CloseCheckVersionUI, OnCloseCheckVersionUI);
    }
}
