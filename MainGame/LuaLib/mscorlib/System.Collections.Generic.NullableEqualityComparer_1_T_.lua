---@class System.Collections.Generic.NullableEqualityComparer_1_T_ : System.Object
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

System.Collections.Generic.NullableEqualityComparer_1_T_ = m
return m
