/********************************     
* 创建时间：2019-05-24 22:12:21   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 临时数据组件
    /// </summary>
    public class UserDataManager : IDisposable
    {
        /// <summary>
        /// 服务器返回的任务列表
        /// </summary>
        public List<ServerTaskEntity> ServerTaskList
        {
            get;
            private set;
        }



        public UserDataManager()
        {
            ServerTaskList = new List<ServerTaskEntity>();
        }
        /// <summary>
        /// 清空数据（临时的数据 用完就删）
        /// </summary>
        public void Clear()
        {
            ServerTaskList.Clear();
        }

        /// <summary>
        /// 代码结束
        /// </summary>
        public void Dispose()
        {
            ServerTaskList.Clear();
        }

        public void ReceiveTask(Task_SearchTaskReturnProto proto)
        {
            int len = proto.CurrTaskItemList.Count;
            for (int i = 0; i < len; i++)
            {
                Task_SearchTaskReturnProto.TaskItem item = proto.CurrTaskItemList[i];
                ServerTaskList.Add(new ServerTaskEntity()
                {
                    Id = item.Id,
                    Status = item.Status
                });
            }
         
        }
    }
}