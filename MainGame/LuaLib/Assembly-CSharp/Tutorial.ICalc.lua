---@class Tutorial.ICalc : table
local m = {}

---@abstract
---@param a number
---@param b number
---@return number
function m:add(a, b) end

Tutorial.ICalc = m
return m
