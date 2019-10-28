using System;
using System.Collections;
using System.Collections.Generic;
using LitJson;
using TQ;
using UnityEngine;

public class TestHttp : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Dictionary<string, object> dic = new Dictionary<string, object>();
        dic.Clear();
        dic["Type"] = 1;
        //0是获取页签 1是获取 2最新的区服
        dic["pageIndex"] = 1;
        dic["ChannelId"] = 0;
        dic["InnerVersion"] = 1001;
        Debug.Log(GameEntry.Http.ReadAccountUrl + "/api/Gameserver");
        GameEntry.Http.SendData(GameEntry.Http.ReadAccountUrl + "/api/Gameserver", OnWebAccountInit, true, true, dic);
    }

    // Update is called once per frame
    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.A))
        //{
        //    Dictionary<string, object> dic = new Dictionary<string, object>();
        //    dic.Clear();

        //    dic["Type"] = 0;
        //    //0是获取最新的区服
        //    dic["pageIndex"] = 1;
        //    dic["ChannelId"] = 0;
        //    dic["InnerVersion"] = 1001;
        //    Debug.Log(GameEntry.Http.ReadAccountUrl + "/api/Gameserver");
        //    GameEntry.Http.SendData(GameEntry.Http.ReadAccountUrl + "/api/Gameserver", OnWebAccountInit, true, true, dic);
        //}

        //List<object> listGameLan = env.Global.Get<List<object>>("progamLanguage");
    }
    //[{"Id":38,"RunStatus":2,"IsCommand":false,"IsNew":false,"Name":"测试服2","Ip":"127.0.0.1","Port":1038},{"Id":37,"RunStatus":2,"IsCommand":false,"IsNew":false,"Name":"测试服1","Ip":"127.0.0.1","Port":1037}]
    //[{"user":"ubuntu","password":"123456","ip":"192.168.1.12"},{ "user":"ubuntu1","password":"45678","ip":"192.168.1.23"}]
    private void OnWebAccountInit(HttpCallBackArgs args)
    {
        Debug.Log(args.Value);
        if (args.HasError)
        {
            Debug.Log(args.Value);
        }
        else
        {
            List<RetGameServerEntity> lst = JsonMapper.ToObject<List<RetGameServerEntity>>(args.Value);
            Debug.Log("获取得到区服信息" + lst);
            if (lst != null)
            {
                for (int i = 0; i < lst.Count; i++)
                {
                   
                }
            }
        }
        Transform d;
        //d.Find("");

    
    }
}
