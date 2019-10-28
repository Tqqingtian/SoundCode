---@class System.CtorDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param instance any
function m:Invoke(instance) end

---@virtual
---@param instance any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(instance, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.CtorDelegate = m
return m
