---@class System.AssemblyLoadEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
---@param args System.AssemblyLoadEventArgs
function m:Invoke(sender, args) end

---@virtual
---@param sender any
---@param args System.AssemblyLoadEventArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, args, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.AssemblyLoadEventHandler = m
return m
