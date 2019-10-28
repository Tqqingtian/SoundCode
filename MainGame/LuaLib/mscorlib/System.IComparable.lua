---@class System.IComparable : table
local m = {}

---@abstract
---@param obj any
---@return number
function m:CompareTo(obj) end

System.IComparable = m
return m
