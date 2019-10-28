---@class System.ObjectDisposedException : System.InvalidOperationException
---@field public Message string
---@field public ObjectName string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.ObjectDisposedException = m
return m
