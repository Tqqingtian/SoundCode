using System.Collections;
using System.Collections.Generic;
using TQ;
using UnityEngine;
using XLua;


public class TestLua : MonoBehaviour
{
    [CSharpCallLua]
    public delegate void OnInitHandler();
    OnInitHandler onInit;
    private LuaEnv luaEnv;

    void Start()
    {
        luaEnv = LuaManager.luaEnv; //�˴�Ҫ��LuaManager�ϻ�ȡ ȫ��ֻ��һ��
        if (luaEnv == null) return;
        onInit = luaEnv.Global.GetInPath<OnInitHandler>(this.GetType().Name + ".OnInit");
       
        if (onInit != null)
        {
            Debug.Log("????====" + this.GetType().Name);
            onInit();
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
