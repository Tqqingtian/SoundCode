---@class System.Threading.CancellationTokenSource : System.Object
---@field public IsCancellationRequested boolean
---@field public Token System.Threading.CancellationToken
local m = {}

---@overload fun(throwOnFirstException:boolean)
function m:Cancel() end

---@overload fun(millisecondsDelay:number)
---@param delay System.TimeSpan
function m:CancelAfter(delay) end

---@virtual
function m:Dispose() end

---@overload fun(...:System.Threading.CancellationToken|System.Threading.CancellationToken[]): @static
---@overload fun(): @static
---@static
---@param token1 System.Threading.CancellationToken
---@param token2 System.Threading.CancellationToken
---@return System.Threading.CancellationTokenSource
function m.CreateLinkedTokenSource(token1, token2) end

System.Threading.CancellationTokenSource = m
return m
