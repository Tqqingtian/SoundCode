---@class UnityEngine.Events.UnityEvent_3_T0_T1_T2_ : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun(arg0:any, arg1:any, arg2:any)
function m:AddListener(call) end

---@param call fun(arg0:any, arg1:any, arg2:any)
function m:RemoveListener(call) end

---@param arg0 any
---@param arg1 any
---@param arg2 any
function m:Invoke(arg0, arg1, arg2) end

UnityEngine.Events.UnityEvent_3_T0_T1_T2_ = m
return m
