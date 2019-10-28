---@class System.EventHandler_1_TEventArgs_ : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
---@param e any
function m:Invoke(sender, e) end

---@virtual
---@param sender any
---@param e any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, e, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.EventHandler_1_TEventArgs_ = m
return m
