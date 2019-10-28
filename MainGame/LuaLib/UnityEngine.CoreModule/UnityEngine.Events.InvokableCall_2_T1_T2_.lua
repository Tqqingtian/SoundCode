---@class UnityEngine.Events.InvokableCall_2_T1_T2_ : UnityEngine.Events.BaseInvokableCall
local m = {}

---@overload fun(args0:any, args1:any)
---@virtual
---@param args any[]
function m:Invoke(args) end

---@virtual
---@param targetObj any
---@param method System.Reflection.MethodInfo
---@return boolean
function m:Find(targetObj, method) end

UnityEngine.Events.InvokableCall_2_T1_T2_ = m
return m
