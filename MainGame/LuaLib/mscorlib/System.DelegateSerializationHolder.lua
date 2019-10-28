---@class System.DelegateSerializationHolder : System.Object
local m = {}

---@static
---@param instance fun(...:any|any[]):
---@param info System.Runtime.Serialization.SerializationInfo
---@param ctx System.Runtime.Serialization.StreamingContext
function m.GetDelegateData(instance, info, ctx) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.DelegateSerializationHolder = m
return m
