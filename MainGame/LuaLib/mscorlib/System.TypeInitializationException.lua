---@class System.TypeInitializationException : System.SystemException
---@field public TypeName string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.TypeInitializationException = m
return m
