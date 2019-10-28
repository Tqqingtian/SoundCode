---@class UnityEngine.Events.BaseInvokableCall : UnityEngine.Events.BaseInvokableCall
local m = {}

---@overload fun(args0:any) @virtual
---@virtual
---@param args any[]
function m:Invoke(args) end

---@virtual
---@param targetObj any
---@param method System.Reflection.MethodInfo
---@return boolean
function m:Find(targetObj, method) end

UnityEngine.Events.BaseInvokableCall = m
return m
