using System.Collections;
using System.Collections.Generic;
using TQ;
using UnityEngine;

public class TestProcedure : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {
        Debug.Log(Application.dataPath + "/Download/xLuaLogic/");
    }
  

    // Update is called once per frame
    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.A))
        //{
        //    print("当前的流程" + TQ.GameEntry.Procedure.CurrProcedure);
        //}
        //if (Input.GetKeyDown(KeyCode.B))
        //{
        //    GameEntry.Procedure.SetData("code", 12);
        //    GameEntry.Procedure.SetData("name", "悠悠");
        //    GameEntry.Procedure.ChangeState(ProcedureState.CheckVersion);
        //}
        //if (Input.GetKeyDown(KeyCode.C))
        //{
        //    GameEntry.Procedure.ChangeState(ProcedureState.EnterGame);
        //}
        //if (Input.GetKeyDown(KeyCode.B))
        //{
        //    ChapterDBModel model = new ChapterDBModel();
        //    model.LoadData();
        //    List<ChapterEntity> lst = model.GetList();
        //    int len = lst.Count;
        //    for (int i = 0; i < len; i++)
        //    {
        //        ChapterEntity entity = lst[i];

        //        Debug.Log("id:" + entity.Id);
        //        Debug.Log("ChapterName:" + entity.ChapterName);
        //    }
        //}
        if (Input.GetKeyDown(KeyCode.B))
        {
            GameEntry.DataTable.LoadDataTableAsync();

        }

    }
}
