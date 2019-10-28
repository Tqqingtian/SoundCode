---@class System.Reflection.ReflectionTypeLoadException : System.SystemException
---@field public Types System.Type[]
---@field public LoaderExceptions System.Exception[]
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Reflection.ReflectionTypeLoadException = m
return m
