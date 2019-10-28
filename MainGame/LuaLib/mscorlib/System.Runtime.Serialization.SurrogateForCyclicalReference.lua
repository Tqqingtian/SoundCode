---@class System.Runtime.Serialization.SurrogateForCyclicalReference : System.Object
local m = {}

---@virtual
---@param obj any
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(obj, info, context) end

---@virtual
---@param obj any
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return any
function m:SetObjectData(obj, info, context, selector) end

System.Runtime.Serialization.SurrogateForCyclicalReference = m
return m
