---@class System.Runtime.Remoting.Messaging.HeaderHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param headers System.Runtime.Remoting.Messaging.Header[]
---@return any
function m:Invoke(headers) end

---@virtual
---@param headers System.Runtime.Remoting.Messaging.Header[]
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(headers, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Runtime.Remoting.Messaging.HeaderHandler = m
return m
