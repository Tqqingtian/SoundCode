---@class UnityEngine.Events.UnityEvent_2_T0_T1_ : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun(arg0:any, arg1:any)
function m:AddListener(call) end

---@param call fun(arg0:any, arg1:any)
function m:RemoveListener(call) end

---@param arg0 any
---@param arg1 any
function m:Invoke(arg0, arg1) end

UnityEngine.Events.UnityEvent_2_T0_T1_ = m
return m
