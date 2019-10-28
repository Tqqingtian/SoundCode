---@class System.Reflection.RuntimeEventInfo : System.Reflection.EventInfo
---@field public Module System.Reflection.Module
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Reflection.RuntimeEventInfo = m
return m
