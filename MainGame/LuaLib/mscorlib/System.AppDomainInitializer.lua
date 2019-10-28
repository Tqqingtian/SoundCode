---@class System.AppDomainInitializer : System.MulticastDelegate
local m = {}

---@virtual
---@param args string[]
function m:Invoke(args) end

---@virtual
---@param args string[]
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(args, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.AppDomainInitializer = m
return m
