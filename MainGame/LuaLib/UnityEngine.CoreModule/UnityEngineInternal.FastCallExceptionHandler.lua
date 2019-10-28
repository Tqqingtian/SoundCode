---@class UnityEngineInternal.FastCallExceptionHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param ex System.Exception
function m:Invoke(ex) end

---@virtual
---@param ex System.Exception
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(ex, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngineInternal.FastCallExceptionHandler = m
return m
