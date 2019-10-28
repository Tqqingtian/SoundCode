---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable_1.ConfiguredTaskAwaiter_TResult_ : System.ValueType
---@field public IsCompleted boolean
local m = {}

---@virtual
---@param continuation fun()
function m:OnCompleted(continuation) end

---@virtual
---@param continuation fun()
function m:UnsafeOnCompleted(continuation) end

---@return any
function m:GetResult() end

System.Runtime.CompilerServices.ConfiguredTaskAwaitable_1.ConfiguredTaskAwaiter_TResult_ = m
return m
