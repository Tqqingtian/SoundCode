---@class CSCallLua.ItfD : table
---@field public f1 number
---@field public f2 number
local m = {}

---@abstract
---@param a number
---@param b number
---@return number
function m:add(a, b) end

CSCallLua.ItfD = m
return m
