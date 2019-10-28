---@class UnityEngineInternal.GetMethodDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param classType System.Type
---@param methodName string
---@param searchBaseTypes boolean
---@param instanceMethod boolean
---@param methodParamTypes System.Type[]
---@return System.Reflection.MethodInfo
function m:Invoke(classType, methodName, searchBaseTypes, instanceMethod, methodParamTypes) end

---@virtual
---@param classType System.Type
---@param methodName string
---@param searchBaseTypes boolean
---@param instanceMethod boolean
---@param methodParamTypes System.Type[]
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(classType, methodName, searchBaseTypes, instanceMethod, methodParamTypes, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.Reflection.MethodInfo
function m:EndInvoke(result) end

UnityEngineInternal.GetMethodDelegate = m
return m
