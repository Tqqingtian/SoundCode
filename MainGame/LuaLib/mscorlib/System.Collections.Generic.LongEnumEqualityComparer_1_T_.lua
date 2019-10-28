---@class System.Collections.Generic.LongEnumEqualityComparer_1_T_ : System.Object
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param x System.ValueType
---@param y System.ValueType
---@return boolean
function m:Equals(x, y) end

---@overload fun(): @virtual
---@virtual
---@param obj System.ValueType
---@return number
function m:GetHashCode(obj) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Collections.Generic.LongEnumEqualityComparer_1_T_ = m
return m
