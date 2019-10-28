---@class System.UnitySerializationHolder : System.Object
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.UnitySerializationHolder = m
return m
