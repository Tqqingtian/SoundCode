---@class System.AsyncCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param ar System.IAsyncResult
function m:Invoke(ar) end

---@virtual
---@param ar System.IAsyncResult
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(ar, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.AsyncCallback = m
return m
