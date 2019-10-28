---@class System.Threading.Timer.Scheduler : System.Object
---@field public Instance System.Threading.Timer.Scheduler @static
local m = {}

---@param timer System.Threading.Timer
function m:Remove(timer) end

---@param timer System.Threading.Timer
---@param new_next_run number
function m:Change(timer, new_next_run) end

System.Threading.Timer.Scheduler = m
return m
