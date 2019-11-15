using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

namespace TQ
{
   
    public class ProcedureBase : FsmState<ProcedureManager>
    {
        [CSharpCallLua]
        public delegate void OnEnterHandler();
        OnEnterHandler onEnter;

        [CSharpCallLua]
        public delegate void OnUpdateHandler();
        OnUpdateHandler onUpdate;

        public delegate void OnLeaveHandler();
        OnLeaveHandler onLeave;

        public delegate void OnDestryHandler();
        OnDestryHandler onDestry;

        private LuaEnv luaEnv;

        public override void OnEnter()
        {
            luaEnv = LuaManager.luaEnv; //此处要从LuaManager上获取 全局只有一个
            if (luaEnv == null) return;
            onEnter = luaEnv.Global.GetInPath<OnEnterHandler>(this.GetType().Name + ".OnEnter");
            onUpdate = LuaManager.luaEnv.Global.GetInPath<OnUpdateHandler>(this.GetType().Name + ".OnUpdate");
            onLeave = LuaManager.luaEnv.Global.GetInPath<OnLeaveHandler>(this.GetType().Name + ".OnLeave");
            onDestry = LuaManager.luaEnv.Global.GetInPath<OnDestryHandler>(this.GetType().Name + ".OnDestry");
            
            if (onEnter != null)
            {
                onEnter();
            }

        }


        public override void OnUpdate()
        {
            if (onUpdate != null)
            {
                onUpdate();
            }
        }

        public override void OnLeave()
        {
            if (onLeave != null)
            {
                onLeave();
            }
        }

        public override void OnDestry()
        {
            if (onDestry != null)
            {
                onDestry();
            }
        }
    }
}

