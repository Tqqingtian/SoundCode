---@class System.Collections.Generic.EqualityComparer_1_System_Byte_ : System.Object
---@field public Default System.Collections.Generic.EqualityComparer_1_System_Byte_ @static
local m = {}

---@abstract
---@param x number
---@param y number
---@return boolean
function m:Equals(x, y) end

---@abstract
---@param obj number
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.EqualityComparer_1_System_Byte_ = m
return m
