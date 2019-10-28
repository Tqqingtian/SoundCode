---@class System.ConsoleCancelEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
---@param e System.ConsoleCancelEventArgs
function m:Invoke(sender, e) end

---@virtual
---@param sender any
---@param e System.ConsoleCancelEventArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, e, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.ConsoleCancelEventHandler = m
return m
