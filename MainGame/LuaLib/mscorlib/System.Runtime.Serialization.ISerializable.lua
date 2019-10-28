---@class System.Runtime.Serialization.ISerializable : table
local m = {}

---@abstract
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Runtime.Serialization.ISerializable = m
return m
