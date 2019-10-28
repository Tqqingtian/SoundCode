---@class System.Threading.Timer : System.MarshalByRefObject
local m = {}

---@overload fun(dueTime:System.TimeSpan, period:System.TimeSpan):
---@overload fun(dueTime:number, period:number):
---@overload fun(dueTime:number, period:number):
---@param dueTime number
---@param period number
---@return boolean
function m:Change(dueTime, period) end

---@overload fun(notifyObject:System.Threading.WaitHandle):
---@virtual
function m:Dispose() end

System.Threading.Timer = m
return m
