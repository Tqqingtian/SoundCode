---@class System.Collections.Generic.EqualityComparer_1_System_String_ : System.Object
---@field public Default System.Collections.Generic.EqualityComparer_1_System_String_ @static
local m = {}

---@abstract
---@param x string
---@param y string
---@return boolean
function m:Equals(x, y) end

---@abstract
---@param obj string
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.EqualityComparer_1_System_String_ = m
return m
