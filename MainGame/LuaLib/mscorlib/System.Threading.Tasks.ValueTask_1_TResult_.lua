---@class System.Threading.Tasks.ValueTask_1_TResult_ : System.ValueType
---@field public IsCompleted boolean
---@field public IsCompletedSuccessfully boolean
---@field public IsFaulted boolean
---@field public IsCanceled boolean
---@field public Result any
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:System.Threading.Tasks.ValueTask_1_TResult_): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param left System.Threading.Tasks.ValueTask_1_TResult_
---@param right System.Threading.Tasks.ValueTask_1_TResult_
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Threading.Tasks.ValueTask_1_TResult_
---@param right System.Threading.Tasks.ValueTask_1_TResult_
---@return boolean
function m.op_Inequality(left, right) end

---@return System.Threading.Tasks.Task
function m:AsTask() end

---@return System.ValueType
function m:GetAwaiter() end

---@param continueOnCapturedContext boolean
---@return System.ValueType
function m:ConfigureAwait(continueOnCapturedContext) end

---@virtual
---@return string
function m:ToString() end

---@static
---@return System.ValueType
function m.CreateAsyncMethodBuilder() end

System.Threading.Tasks.ValueTask_1_TResult_ = m
return m
