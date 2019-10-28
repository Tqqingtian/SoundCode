---@class UnityEngine.Events.UnityEventBase : System.Object
local m = {}

---@return number
function m:GetPersistentEventCount() end

---@param index number
---@return UnityEngine.Object
function m:GetPersistentTarget(index) end

---@param index number
---@return string
function m:GetPersistentMethodName(index) end

---@param index number
---@param state UnityEngine.Events.UnityEventCallState
function m:SetPersistentListenerState(index, state) end

function m:RemoveAllListeners() end

---@virtual
---@return string
function m:ToString() end

---@static
---@param obj any
---@param functionName string
---@param argumentTypes System.Type[]
---@return System.Reflection.MethodInfo
function m.GetValidMethodInfo(obj, functionName, argumentTypes) end

UnityEngine.Events.UnityEventBase = m
return m
