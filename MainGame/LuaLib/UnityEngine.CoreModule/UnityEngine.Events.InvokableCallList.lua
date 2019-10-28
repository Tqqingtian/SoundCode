---@class UnityEngine.Events.InvokableCallList : System.Object
---@field public Count number
local m = {}

---@param call UnityEngine.Events.BaseInvokableCall
function m:AddPersistentInvokableCall(call) end

---@param call UnityEngine.Events.BaseInvokableCall
function m:AddListener(call) end

---@param targetObj any
---@param method System.Reflection.MethodInfo
function m:RemoveListener(targetObj, method) end

function m:Clear() end

function m:ClearPersistent() end

---@return UnityEngine.Events.BaseInvokableCall[]
function m:PrepareInvoke() end

UnityEngine.Events.InvokableCallList = m
return m
