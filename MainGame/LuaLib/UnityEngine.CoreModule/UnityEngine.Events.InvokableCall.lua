---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
local m = {}

---@overload fun()
---@virtual
---@param args any[]
function m:Invoke(args) end

---@virtual
---@param targetObj any
---@param method System.Reflection.MethodInfo
---@return boolean
function m:Find(targetObj, method) end

UnityEngine.Events.InvokableCall = m
return m
