---@class System.Collections.IComparer : table
local m = {}

---@abstract
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

System.Collections.IComparer = m
return m
