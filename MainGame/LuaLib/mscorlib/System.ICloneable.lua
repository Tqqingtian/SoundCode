---@class System.ICloneable : table
local m = {}

---@abstract
---@return any
function m:Clone() end

System.ICloneable = m
return m
