---@class CSCallLua.GetE : System.MulticastDelegate
local m = {}

---@virtual
---@return fun()
function m:Invoke() end

---@virtual
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return fun()
function m:EndInvoke(result) end

CSCallLua.GetE = m
return m
