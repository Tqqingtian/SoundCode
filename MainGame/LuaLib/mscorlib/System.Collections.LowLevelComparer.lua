---@class System.Collections.LowLevelComparer : System.Object
local m = {}

---@virtual
---@param a any
---@param b any
---@return number
function m:Compare(a, b) end

System.Collections.LowLevelComparer = m
return m
