---@class System.Threading.TimeoutHelper : System.Object
local m = {}

---@static
---@return number
function m.GetTime() end

---@static
---@param startTime number
---@param originalWaitMillisecondsTimeout number
---@return number
function m.UpdateTimeOut(startTime, originalWaitMillisecondsTimeout) end

System.Threading.TimeoutHelper = m
return m
