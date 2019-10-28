using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TQ
{
    /// <summary>
    /// µÇÂ¼Á÷³Ì
    /// </summary>
    public class ProcedureLogOn : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            GameEntry.Log(LogCategory.Procedure, "OnEnter ProcedureLogOn");
            //¼ÓÔØµÇÂ¼³¡¾°
            GameEntry.UI.OpenUIForm(UIFormId.LogOn);

            //GameEntry.Scene.LoadScene(1, true, onComplete: () =>
            //   {
            //       //¼ÓÔØµÇÂ¼ui
            //       GameEntry.Event.CommonEvent.Dispatch(SysEventId.CloseCheckVersionUI);
            //   });

            GameEntry.Event.CommonEvent.Dispatch(SysEventId.CloseCheckVersionUI);

        }




        public override void OnUpdate()
        {
            base.OnUpdate();
        }

        public override void OnLeave()
        {
            base.OnLeave();
            GameEntry.Log(LogCategory.Procedure, "OnLeave ProcedureLogOn");
        }

    }
}


