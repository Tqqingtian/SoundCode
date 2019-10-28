---@class System.Collections.Generic.InternalStringComparer : System.Collections.Generic.EqualityComparer_1_System_String_
local m = {}

---@virtual
---@param obj string
---@return number
function m:GetHashCode(obj) end

---@virtual
---@param x string
---@param y string
---@return boolean
function m:Equals(x, y) end

System.Collections.Generic.InternalStringComparer = m
return m
