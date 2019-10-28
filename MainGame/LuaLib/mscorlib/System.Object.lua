---@class System.Object : System.Object
---@field public Default any @static
local m = {}

---@abstract
---@param x System.ValueType
---@param y System.ValueType
---@return boolean
function m:Equals(x, y) end

---@abstract
---@param obj System.ValueType
---@return number
function m:GetHashCode(obj) end

System.Object = m
return m
