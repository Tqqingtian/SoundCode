---@class System.Runtime.CompilerServices.RuntimeHelpers.TryCode : System.MulticastDelegate
local m = {}

---@virtual
---@param userData any
function m:Invoke(userData) end

---@virtual
---@param userData any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(userData, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Runtime.CompilerServices.RuntimeHelpers.TryCode = m
return m
