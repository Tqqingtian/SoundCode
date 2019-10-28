---@class System.Reflection.RuntimePropertyInfo : System.Reflection.PropertyInfo
---@field public Module System.Reflection.Module
local m = {}

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Reflection.RuntimePropertyInfo = m
return m
