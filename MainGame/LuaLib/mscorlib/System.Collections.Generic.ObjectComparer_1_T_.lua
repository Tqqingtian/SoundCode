---@class System.Collections.Generic.ObjectComparer_1_T_ : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Collections.Generic.ObjectComparer_1_T_ = m
return m
