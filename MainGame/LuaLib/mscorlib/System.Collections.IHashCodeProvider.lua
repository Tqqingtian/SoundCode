---@class System.Collections.IHashCodeProvider : table
local m = {}

---@abstract
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.IHashCodeProvider = m
return m
