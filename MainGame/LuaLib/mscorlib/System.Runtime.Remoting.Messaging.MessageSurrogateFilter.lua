---@class System.Runtime.Remoting.Messaging.MessageSurrogateFilter : System.MulticastDelegate
local m = {}

---@virtual
---@param key string
---@param value any
---@return boolean
function m:Invoke(key, value) end

---@virtual
---@param key string
---@param value any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(key, value, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean
function m:EndInvoke(result) end

System.Runtime.Remoting.Messaging.MessageSurrogateFilter = m
return m
