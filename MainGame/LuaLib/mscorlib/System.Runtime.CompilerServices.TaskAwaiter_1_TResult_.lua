---@class System.Runtime.CompilerServices.TaskAwaiter_1_TResult_ : System.ValueType
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

System.Runtime.CompilerServices.TaskAwaiter_1_TResult_ = m
return m
