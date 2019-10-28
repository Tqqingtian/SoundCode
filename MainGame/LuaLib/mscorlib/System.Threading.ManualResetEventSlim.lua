---@class System.Threading.ManualResetEventSlim : System.Object
---@field public WaitHandle System.Threading.WaitHandle
---@field public IsSet boolean
---@field public SpinCount number
local m = {}

function m:Set() end

function m:Reset() end

---@overload fun(cancellationToken:System.Threading.CancellationToken)
---@overload fun(timeout:System.TimeSpan):
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):
---@overload fun(millisecondsTimeout:number):
---@overload fun(millisecondsTimeout:number, cancellationToken:System.Threading.CancellationToken):
function m:Wait() end

---@virtual
function m:Dispose() end

System.Threading.ManualResetEventSlim = m
return m
