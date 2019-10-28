---@class System.Collections.Generic.ReferenceEqualityComparer_1_T_ : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return boolean
function m:Equals(x, y) end

---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.ReferenceEqualityComparer_1_T_ = m
return m
