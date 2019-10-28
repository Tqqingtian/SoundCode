---@class System.Runtime.Serialization.SerializationEventHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
function m:Invoke(context) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(context, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Runtime.Serialization.SerializationEventHandler = m
return m
