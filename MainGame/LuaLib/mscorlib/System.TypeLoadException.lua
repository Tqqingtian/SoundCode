---@class System.TypeLoadException : System.SystemException
---@field public Message string
---@field public TypeName string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.TypeLoadException = m
return m
