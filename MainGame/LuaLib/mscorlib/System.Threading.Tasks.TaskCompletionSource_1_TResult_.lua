---@class System.Threading.Tasks.TaskCompletionSource_1_TResult_ : System.Object
---@field public Task System.Threading.Tasks.Task
local m = {}

---@overload fun(exceptions:System.Collections.Generic.IEnumerable_1_System_Exception_):
---@param exception System.Exception
---@return boolean
function m:TrySetException(exception) end

---@overload fun(exceptions:System.Collections.Generic.IEnumerable_1_System_Exception_)
---@param exception System.Exception
function m:SetException(exception) end

---@param result any
---@return boolean
function m:TrySetResult(result) end

---@param result any
function m:SetResult(result) end

---@overload fun(cancellationToken:System.Threading.CancellationToken):
---@return boolean
function m:TrySetCanceled() end

function m:SetCanceled() end

System.Threading.Tasks.TaskCompletionSource_1_TResult_ = m
return m
