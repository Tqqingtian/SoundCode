---@class System.Reflection.RuntimeFieldInfo : System.Reflection.FieldInfo
---@field public Module System.Reflection.Module
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Reflection.RuntimeFieldInfo = m
return m
