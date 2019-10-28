---@class System.Threading.SemaphoreSlim : System.Object
---@field public CurrentCount number
---@field public AvailableWaitHandle System.Threading.WaitHandle
local m = {}

---@overload fun(cancellationToken:System.Threading.CancellationToken)
---@overload fun(timeout:System.TimeSpan):
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):
---@overload fun(millisecondsTimeout:number):
---@overload fun(millisecondsTimeout:number, cancellationToken:System.Threading.CancellationToken):
function m:Wait() end

---@overload fun(cancellationToken:System.Threading.CancellationToken):
---@overload fun(millisecondsTimeout:number):
---@overload fun(timeout:System.TimeSpan):
---@overload fun(timeout:System.TimeSpan, cancellationToken:System.Threading.CancellationToken):
---@overload fun(millisecondsTimeout:number, cancellationToken:System.Threading.CancellationToken):
---@return System.Threading.Tasks.Task
function m:WaitAsync() end

---@overload fun(releaseCount:number):
---@return number
function m:Release() end

---@virtual
function m:Dispose() end

System.Threading.SemaphoreSlim = m
return m
