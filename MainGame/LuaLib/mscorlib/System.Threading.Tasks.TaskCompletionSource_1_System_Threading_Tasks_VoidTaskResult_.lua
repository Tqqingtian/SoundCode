---@class System.Threading.Tasks.TaskCompletionSource_1_System_Threading_Tasks_VoidTaskResult_ : System.Object
---@field public Task System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_
local m = {}

---@overload fun(exceptions:System.Collections.Generic.IEnumerable_1_System_Exception_):
---@param exception System.Exception
---@return boolean
function m:TrySetException(exception) end

---@overload fun(exceptions:System.Collections.Generic.IEnumerable_1_System_Exception_)
---@param exception System.Exception
function m:SetException(exception) end

---@param result System.Threading.Tasks.VoidTaskResult
---@return boolean
function m:TrySetResult(result) end

---@param result System.Threading.Tasks.VoidTaskResult
function m:SetResult(result) end

---@overload fun(cancellationToken:System.Threading.CancellationToken):
---@return boolean
function m:TrySetCanceled() end

function m:SetCanceled() end

System.Threading.Tasks.TaskCompletionSource_1_System_Threading_Tasks_VoidTaskResult_ = m
return m
