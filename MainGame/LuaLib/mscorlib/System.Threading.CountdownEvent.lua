---@class System.Threading.CountdownEvent : System.Object
---@field public CurrentCount number
---@field public InitialCount number
---@field public IsSet boolean
---@field public WaitHandle System.Threading.WaitHandle
local m = {}

---@virtual
function m:Dispose() end

---@overload fun(signalCount:number):
---@return boolean
function m:Signal() end

---@overload fun(signalCount:number)
function m:AddCount() end

---@overload fun(signalCount:number):
---@return boolean
function m:TryAddCount() end

---@overload fun(count:number)
function m:Reset() end

---@overload fun(cancellationToken:System.Threading.CancellationToken)
---@overload fun(timeout:System.TimeSpan):
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):
---@overload fun(millisecondsTimeout:number):
---@overload fun(millisecondsTimeout:number, cancellationToken:System.Threading.CancellationToken):
function m:Wait() end

System.Threading.CountdownEvent = m
return m
