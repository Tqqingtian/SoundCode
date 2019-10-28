---@class System.Collections.Generic.EqualityComparer_1_T_ : System.Object
---@field public Default System.Collections.Generic.EqualityComparer_1_T_ @static
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

System.Collections.Generic.EqualityComparer_1_T_ = m
return m
