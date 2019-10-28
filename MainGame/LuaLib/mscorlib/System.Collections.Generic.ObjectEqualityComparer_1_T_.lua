---@class System.Collections.Generic.ObjectEqualityComparer_1_T_ : System.Object
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param x any
---@param y any
---@return boolean
function m:Equals(x, y) end

---@overload fun(): @virtual
---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.ObjectEqualityComparer_1_T_ = m
return m
