---@class System.Threading.SpinWait : System.ValueType
---@field public Count number
---@field public NextSpinWillYield boolean
local m = {}

function m:SpinOnce() end

function m:Reset() end

---@overload fun(condition:fun():, timeout:System.TimeSpan): @static
---@overload fun(condition:fun():, millisecondsTimeout:number): @static
---@static
---@param condition fun():
function m.SpinUntil(condition) end

System.Threading.SpinWait = m
return m
