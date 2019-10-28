using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public partial class Sys_SceneDatailDBModel
{
    private List<Sys_SceneDatailEntity> m_retLst = new List<Sys_SceneDatailEntity>(10);

    /// <summary>
    /// 根据场景编号获取场景明细
    /// </summary>
    /// <param name="sceneId"></param>
    /// <param name="sceneGrade"></param>
    /// <returns></returns>
    public List<Sys_SceneDatailEntity> GetListBySceneId(int sceneId, int sceneGrade)
    {
        m_retLst.Clear();
        List<Sys_SceneDatailEntity> lst = this.GetList();
        int len = lst.Count;
        for (int i = 0; i < len; i++)
        {
            Sys_SceneDatailEntity entity = lst[i];
            if (entity.SceneId == sceneId && entity.SceneGrade <= sceneGrade)
            {
                
                m_retLst.Add(entity);
            }

        }
        return m_retLst;
    }
}
