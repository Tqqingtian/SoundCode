/********************************     
* 创建时间：2019-05-27 01:05:19   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using TQ;
using UnityEngine;

public class TestSocket : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.RoleOperation_LogOnGameServerReturn, OnRoleOperation_LogOnGameServerReturn);
    }

    // Update is called once per frame
    void Update()
    {
        
        if (Input.GetKeyDown(KeyCode.A))
        {
            GameEntry.Socket.ConnerToMainSocket("127.0.0.1", 2038);
        }
        if (Input.GetKeyDown(KeyCode.C))
        {
            //for (int i = 0; i < 100; i++)
            //{
            //这里是有问题的----------------
            //System_HeartbeatProto proto = new System_HeartbeatProto();

            //GameEntry.Socket.SendMsg(proto.ToArray());
            //RoleOperation_LogOnGameServerProto proto = new RoleOperation_LogOnGameServerProto();
            //proto.AccountId = 222;
            //GameEntry.Socket.SendMsg(proto.ToArray());
            //GameEntry.Socket.SendMainMsg(proto);
            //}
            //RoleOperation_LogOnGameServerProto proto = new RoleOperation_LogOnGameServerProto();
            //proto.AccountId = 1;
            //GameEntry.Socket.SendMainMsg(proto);

            RoleOperation_CreateRoleProto roleOperation_CreateRoleProto = new RoleOperation_CreateRoleProto();
            roleOperation_CreateRoleProto.JobId = 1;
            roleOperation_CreateRoleProto.RoleNickName = "ddd";
            GameEntry.Socket.SendMsg(roleOperation_CreateRoleProto.ToArray());
        }
        
    }


    private void OnRoleOperation_LogOnGameServerReturn(byte[] buffer)
    {
        RoleOperation_LogOnGameServerReturnProto proto = RoleOperation_LogOnGameServerReturnProto.GetProto(buffer);
      
        Debug.Log(proto.ProtoEnName + " " + proto.ProtoCode );
        Debug.Log(proto);
    }

    private void OnDestroy()
    {
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.RoleOperation_LogOnGameServerReturn, OnRoleOperation_LogOnGameServerReturn);
    }

  
}
