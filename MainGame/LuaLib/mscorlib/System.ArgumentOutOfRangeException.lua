---@class System.ArgumentOutOfRangeException : System.ArgumentException
---@field public Message string
---@field public ActualValue any
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.ArgumentOutOfRangeException = m
return m
