---@class System.Runtime.CompilerServices.ValueTaskAwaiter_1_TResult_ : System.ValueType
---@field public IsCompleted boolean
local m = {}

---@return any
function m:GetResult() end

---@virtual
---@param continuation fun()
function m:OnCompleted(continuation) end

---@virtual
---@param continuation fun()
function m:UnsafeOnCompleted(continuation) end

System.Runtime.CompilerServices.ValueTaskAwaiter_1_TResult_ = m
return m
