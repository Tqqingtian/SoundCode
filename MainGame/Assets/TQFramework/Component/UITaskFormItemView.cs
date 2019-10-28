/********************************     
* 创建时间：2019-06-30 03:36:34   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TQ;

public class UITaskFormItemView : MonoBehaviour
{
    [SerializeField]
    private Text txtName;

    [SerializeField]
    private Image imgStatus;

    [SerializeField]
    private Button btnDetail;

    private Action<int> m_OnClik;

    private int m_TackId;

    private void Awake()
    {
        btnDetail.onClick.AddListener(() =>
        {
            if (m_OnClik!=null)
            {
                m_OnClik(m_TackId);
            }
        });
    }
    public void SetUI(ServerTaskEntity entity, Action<int> onClik)
    {
        m_TackId = entity.Id;
        m_OnClik = onClik;
        print(m_TackId);
        txtName.text = GameEntry.Localization.GetString(GameEntry.DataTable.DataTableManager.TaskDBModel.Get(m_TackId).Name);
    }
}
