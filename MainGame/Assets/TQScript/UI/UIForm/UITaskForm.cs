/********************************     
* 创建时间：2019-06-27 00:37:01   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
using UnityEngine.UI;
using System;

public class UITaskForm : UIFormBase
{
    /// <summary>
    /// 滚动列表
    /// </summary>
    [SerializeField]
    private UIMultiScroller multiScroller;
    /// <summary>
    /// 任务名称
    /// </summary>
    [SerializeField]
    private Text txtTaskName;
    /// <summary>
    /// 任务描述
    /// </summary>
    [SerializeField]
    private Text txtTaskDesc;
    /// <summary>
    /// 奖励金币
    /// </summary>
    [SerializeField]
    private Text txtAwardMoney;
    /// <summary>
    /// 领取按钮
    /// </summary>
    [SerializeField]
    private Button btnReceive;

    protected override void OnInit(object userData)
    {
        base.OnInit(userData);

        btnReceive.onClick.AddListener(() =>
        {

        });

        multiScroller.OnItemCreate = OnItemCreate;
    }
    protected override void OnOpen(object userData)
    {
        base.OnOpen(userData);
        LoadTaskList();
    }

    protected override void OnClose()
    {
        base.OnClose();

        Debug.Log("OnClose");
    }

    protected override void OnBeforDestry()
    {
        base.OnBeforDestry();
        multiScroller = null;
        txtTaskName = null;
        txtTaskDesc = null;
        txtAwardMoney = null;
        btnReceive = null;

    }

    private List<ServerTaskEntity> m_ServerTaskList;

    /// <summary>
    /// 加载任务列表
    /// </summary>
    private void LoadTaskList()
    {
        m_ServerTaskList = GameEntry.Data.UserDataManager.ServerTaskList;
        multiScroller.DataCount = m_ServerTaskList.Count;
        multiScroller.ResetScroller();
    }


    private void OnItemCreate(int index, GameObject obj)
    {
        UITaskFormItemView view = obj.GetComponent<UITaskFormItemView>();
        view.SetUI(m_ServerTaskList[index], OnBtnDetailClick);
    }

    private void OnBtnDetailClick(int id)
    {
        print(id);
        TaskEntity entity = GameEntry.DataTable.DataTableManager.TaskDBModel.Get(id);
        txtTaskName.text = GameEntry.Localization.GetString(entity.Name);
        txtTaskDesc.text = GameEntry.Localization.GetString(entity.Content);
        txtAwardMoney.text = "100";

    }
}
