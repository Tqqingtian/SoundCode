---@class System.Runtime.CompilerServices.RuntimeWrappedException : System.Exception
---@field public WrappedException any
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Runtime.CompilerServices.RuntimeWrappedException = m
return m
