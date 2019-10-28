---@class System.Threading.SpinLock : System.ValueType
---@field public IsHeld boolean
---@field public IsHeldByCurrentThread boolean
---@field public IsThreadOwnerTrackingEnabled boolean
local m = {}

---@param lockTaken System.Boolean
---@return System.Boolean
function m:Enter(lockTaken) end

---@overload fun(timeout:System.TimeSpan, lockTaken:System.Boolean):
---@overload fun(millisecondsTimeout:number, lockTaken:System.Boolean):
---@param lockTaken System.Boolean
---@return System.Boolean
function m:TryEnter(lockTaken) end

---@overload fun(useMemoryBarrier:boolean)
function m:Exit() end

System.Threading.SpinLock = m
return m
