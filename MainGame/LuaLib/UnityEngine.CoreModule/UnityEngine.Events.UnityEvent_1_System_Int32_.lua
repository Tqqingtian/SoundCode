---@class UnityEngine.Events.UnityEvent_1_System_Int32_ : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun(arg0:number)
function m:AddListener(call) end

---@param call fun(arg0:number)
function m:RemoveListener(call) end

---@param arg0 number
function m:Invoke(arg0) end

UnityEngine.Events.UnityEvent_1_System_Int32_ = m
return m
