---@class System.Threading.Timer.TimerComparer : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

System.Threading.Timer.TimerComparer = m
return m
