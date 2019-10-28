/********************************     
* 创建时间：2019-06-27 00:23:31   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
using UnityEngine.UI;
public class TestUI : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        //InputField f;
        //f.text
        //Button b;
        //b.onClick.RemoveAllListeners
        //this.GetComponent<Button>().onClick.AddListener();
        //PlayerPrefs.SetString("Account","222");
        //PlayerPrefs.SetString("Pwd","222");
        //PlayerPrefs.DeleteAll();
        //print( PlayerPrefs.GetString("Account"));
        //GameUtil.AddChild(

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.B))
        {
            GameEntry.UI.OpenUIForm(UIFormId.UI_Task);

            //string str = GameEntry.Localization.GetString("Button.Receive", "道具");
            //Debug.Log(str);
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            GameEntry.UI.CloseUIForm(UIFormId.UI_Task);
        }
    }
}
