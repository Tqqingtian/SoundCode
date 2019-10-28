---@class System.Collections.Generic.NonRandomizedStringEqualityComparer : System.Collections.Generic.EqualityComparer_1_System_String_
local m = {}

---@virtual
---@param x string
---@param y string
---@return boolean
function m:Equals(x, y) end

---@virtual
---@param obj string
---@return number
function m:GetHashCode(obj) end

System.Collections.Generic.NonRandomizedStringEqualityComparer = m
return m
