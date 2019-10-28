---@class System.ResolveEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
---@param args System.ResolveEventArgs
---@return System.Reflection.Assembly
function m:Invoke(sender, args) end

---@virtual
---@param sender any
---@param args System.ResolveEventArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, args, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.Reflection.Assembly
function m:EndInvoke(result) end

System.ResolveEventHandler = m
return m
