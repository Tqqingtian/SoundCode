---@class System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter : System.ValueType
---@field public IsCompleted boolean
local m = {}

---@virtual
---@param continuation fun()
function m:OnCompleted(continuation) end

---@virtual
---@param continuation fun()
function m:UnsafeOnCompleted(continuation) end

function m:GetResult() end

System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter = m
return m
