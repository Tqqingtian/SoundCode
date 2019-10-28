---@class System.Collections.CompatibleComparer : System.Object
local m = {}

---@param a any
---@param b any
---@return number
function m:Compare(a, b) end

---@virtual
---@param a any
---@param b any
---@return boolean
function m:Equals(a, b) end

---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.CompatibleComparer = m
return m
