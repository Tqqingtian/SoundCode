---@class System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable_1.ConfiguredValueTaskAwaiter_TResult_ : System.ValueType
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

System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable_1.ConfiguredValueTaskAwaiter_TResult_ = m
return m
