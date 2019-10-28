---@class System.Runtime.Serialization.ISerializationSurrogate : table
local m = {}

---@abstract
---@param obj any
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(obj, info, context) end

---@abstract
---@param obj any
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return any
function m:SetObjectData(obj, info, context, selector) end

System.Runtime.Serialization.ISerializationSurrogate = m
return m
