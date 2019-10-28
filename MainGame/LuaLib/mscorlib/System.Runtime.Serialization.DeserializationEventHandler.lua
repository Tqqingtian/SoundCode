---@class System.Runtime.Serialization.DeserializationEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param sender any
function m:Invoke(sender) end

---@virtual
---@param sender any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sender, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Runtime.Serialization.DeserializationEventHandler = m
return m
