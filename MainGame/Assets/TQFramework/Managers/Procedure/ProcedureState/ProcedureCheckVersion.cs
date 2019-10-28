using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class ProcedureCheckVersion : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            Debug.Log("OnEnter ProcedureCheckVersion");
#if DISABLE_ASSETBUNDLE
            GameEntry.Procedure.ChangeState(ProcedureState.Preload);
#else
            GameEntry.Resource.InitStreamingAssetsBundleInfo();//初始化只读取信息
#endif
            
        }

        public override void OnUpdate()
        {
            base.OnUpdate();
            //Debug.Log("OnUpdate ProcedureCheckVersion");
        }

        public override void OnLeave()
        {
            base.OnLeave();
            Debug.Log("OnLeave ProcedureCheckVersion");
        }

        public override void OnDestry()
        {
            base.OnDestry();
            Debug.Log("OnDestry ProcedureCheckVersion");
        }

    }
}

