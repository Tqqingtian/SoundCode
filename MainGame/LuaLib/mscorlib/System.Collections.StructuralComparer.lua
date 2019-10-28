---@class System.Collections.StructuralComparer : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

System.Collections.StructuralComparer = m
return m
