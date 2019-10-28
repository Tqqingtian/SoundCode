---@class System.Runtime.CompilerServices.RuntimeHelpers.CleanupCode : System.MulticastDelegate
local m = {}

---@virtual
---@param userData any
---@param exceptionThrown boolean
function m:Invoke(userData, exceptionThrown) end

---@virtual
---@param userData any
---@param exceptionThrown boolean
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(userData, exceptionThrown, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Runtime.CompilerServices.RuntimeHelpers.CleanupCode = m
return m
