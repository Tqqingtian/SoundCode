---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun()
function m:AddListener(call) end

---@param call fun()
function m:RemoveListener(call) end

function m:Invoke() end

UnityEngine.Events.UnityEvent = m
return m
