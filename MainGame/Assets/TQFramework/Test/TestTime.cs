using System.Collections;
using System.Collections.Generic;
using TQ;
using UnityEngine;

public class TestTime : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
    TimeAction action;
    // Update is called once per frame
    void Update () {
        if (Input.GetKeyDown(KeyCode.A))
        {
            //创建定时器
            action = GameEntry.Time.CreateTimeAction();
            Debug.Log("创建定时器");
            action.Init(1, 0.5f, 100,() =>
            {
                Debug.Log("开始");
            },(int loop) =>
            {
                Debug.Log("运行次数" + loop);
            },() =>
            {
                Debug.Log("运行结束");

            }).Run();
            action.Pause();

        }
        if (Input.GetKeyDown(KeyCode.B))
        {
            action.Pause();
        }
        if (Input.GetKeyDown(KeyCode.C))
        {
            action.Resume();
        }

    }
}
