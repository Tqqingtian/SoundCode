---@class System.Collections.Generic.IEqualityComparer_1_T_ : table
local m = {}

---@abstract
---@param x any
---@param y any
---@return boolean
function m:Equals(x, y) end

---@abstract
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.IEqualityComparer_1_T_ = m
return m
