using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// Ω¯»Î”Œœ∑
    /// </summary>
    public class ProcedureEnterGame : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            Debug.Log("OnEnter ProcedureEnterGame");
            
        }

        public override void OnUpdate()
        {
            base.OnUpdate();
            //Debug.Log("OnUpdate ProcedureEnterGame");
        }

        public override void OnLeave()
        {
            base.OnLeave();
            Debug.Log("OnLeave ProcedureEnterGame");
        }

        public override void OnDestry()
        {
            base.OnDestry();
            Debug.Log("OnDestry ProcedureEnterGame");
        }

    }
}

