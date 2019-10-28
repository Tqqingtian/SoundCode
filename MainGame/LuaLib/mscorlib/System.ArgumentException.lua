---@class System.ArgumentException : System.SystemException
---@field public Message string
---@field public ParamName string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.ArgumentException = m
return m
