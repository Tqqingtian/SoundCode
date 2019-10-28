---@class UnityEngine.Events.PersistentCall : System.Object
---@field public target UnityEngine.Object
---@field public methodName string
---@field public mode UnityEngine.Events.PersistentListenerMode
---@field public arguments UnityEngine.Events.ArgumentCache
---@field public callState UnityEngine.Events.UnityEventCallState
local m = {}

---@return boolean
function m:IsValid() end

---@param theEvent UnityEngine.Events.UnityEventBase
---@return UnityEngine.Events.BaseInvokableCall
function m:GetRuntimeCall(theEvent) end

---@param ttarget UnityEngine.Object
---@param mmethodName string
function m:RegisterPersistentListener(ttarget, mmethodName) end

function m:UnregisterPersistentListener() end

UnityEngine.Events.PersistentCall = m
return m
