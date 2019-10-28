---@class System.Threading.Tasks.BeginEndAwaitableAdapter : System.Object
---@field public Callback fun(ar:System.IAsyncResult) @static
---@field public IsCompleted boolean
local m = {}

---@return System.Threading.Tasks.BeginEndAwaitableAdapter
function m:GetAwaiter() end

---@virtual
---@param continuation fun()
function m:UnsafeOnCompleted(continuation) end

---@virtual
---@param continuation fun()
function m:OnCompleted(continuation) end

---@return System.IAsyncResult
function m:GetResult() end

System.Threading.Tasks.BeginEndAwaitableAdapter = m
return m
