using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
using System;

public class TestEvent : MonoBehaviour {

	// Use this for initialization
	void Start () {
        GameEntry.Event.CommonEvent.AddEventListener(CommonEventId.RegComplete,OnRegComplete);
	}

    private void OnRegComplete(object userData)
    {
        Debug.Log(userData);
    }

    // Update is called once per frame
    void Update () {
        //if (Input.GetKeyDown(KeyCode.A))
        //{
        //    GameEntry.Event.CommonEvent.Dispatch(CommonEventId.RegComplete, 123);
        //}
    }

    private void OnDestroy()
    {
        TQ.GameEntry.Event.CommonEvent.RemoveEventListener(CommonEventId.RegComplete, OnRegComplete);
    }
}
