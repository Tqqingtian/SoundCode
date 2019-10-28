---@class System.Collections.IEqualityComparer : table
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

System.Collections.IEqualityComparer = m
return m
