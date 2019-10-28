---@class UnityEngine.Events.UnityEvent_1_T0_ : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun(arg0:any)
function m:AddListener(call) end

---@param call fun(arg0:any)
function m:RemoveListener(call) end

---@param arg0 any
function m:Invoke(arg0) end

UnityEngine.Events.UnityEvent_1_T0_ = m
return m
