---@class System.Runtime.CompilerServices.AsyncTaskMethodBuilder_1_TResult_ : System.ValueType
---@field public Task System.Threading.Tasks.Task
local m = {}

---@static
---@return System.Runtime.CompilerServices.AsyncTaskMethodBuilder_1_TResult_
function m.Create() end

---@param stateMachine any
---@return any
function m:Start(stateMachine) end

---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
function m:SetStateMachine(stateMachine) end

---@param awaiter any
---@param stateMachine any
---@return any, any
function m:AwaitOnCompleted(awaiter, stateMachine) end

---@param awaiter any
---@param stateMachine any
---@return any, any
function m:AwaitUnsafeOnCompleted(awaiter, stateMachine) end

---@param result any
function m:SetResult(result) end

---@param exception System.Exception
function m:SetException(exception) end

System.Runtime.CompilerServices.AsyncTaskMethodBuilder_1_TResult_ = m
return m
