---@class System.Reflection.ModuleResolveEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
---@param e System.ResolveEventArgs
---@return System.Reflection.Module
function m:Invoke(sender, e) end

---@virtual
---@param sender any
---@param e System.ResolveEventArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, e, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.Reflection.Module
function m:EndInvoke(result) end

System.Reflection.ModuleResolveEventHandler = m
return m
