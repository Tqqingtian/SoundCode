---@class TQ.BaseAction : System.MulticastDelegate
local m = {}

---@virtual
function m:Invoke() end

---@virtual
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TQ.BaseAction = m
return m
