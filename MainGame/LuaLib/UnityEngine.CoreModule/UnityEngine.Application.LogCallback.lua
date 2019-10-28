---@class UnityEngine.Application.LogCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param condition string
---@param stackTrace string
---@param type UnityEngine.LogType
function m:Invoke(condition, stackTrace, type) end

---@virtual
---@param condition string
---@param stackTrace string
---@param type UnityEngine.LogType
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(condition, stackTrace, type, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Application.LogCallback = m
return m
