using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;

public class TestDownload : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.D))
        {
            LinkedList<string> lst = new LinkedList<string>();
            lst.AddLast("download/cusshaders.assetbundle");
            lst.AddLast("download/datatable.assetbundle");
            lst.AddLast("download/xlualogic.assetbundle");
            lst.AddLast("download/ui/uifont.assetbundle");
            lst.AddLast("download/ui/uiprefab.assetbundle");
            lst.AddLast("download/ui/uires/uicommon.assetbundle");
            lst.AddLast("download/ui/uires/uiframe.assetbundle");
            lst.AddLast("download/ui/uires/uititlebar.assetbundle");

            GameEntry.Download.BeginDownloadMulit(lst, OnDownloadMulitUpdate, OnDownloadMulitComplete);
        }
    }

    private void OnDownloadMulitComplete()
    {
        Debug.LogError("下完了");
    }

    private void OnDownloadMulitUpdate(int t1, int t2, ulong t3, ulong t4)
    {
        Debug.LogError(string.Format("下载中 当前数量{0}/{1} 当前大小（字节）{2}/{3}",t1, t2, t3, t4));
    }
}
