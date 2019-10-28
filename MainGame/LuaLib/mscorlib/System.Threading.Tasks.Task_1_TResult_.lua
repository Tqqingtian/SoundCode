---@class System.Threading.Tasks.Task_1_TResult_ : System.Threading.Tasks.Task
---@field public Factory any @static
---@field public Result any
local m = {}

---@return System.ValueType
function m:GetAwaiter() end

---@param continueOnCapturedContext boolean
---@return System.ValueType
function m:ConfigureAwait(continueOnCapturedContext) end

---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_TResult_), cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_TResult_), scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_TResult_), continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_TResult_), cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any), state:any):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any), state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any), state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_TResult_):):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_TResult_):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_TResult_):, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_TResult_):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_TResult_):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any):, state:any):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any):, state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any):, state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_TResult_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param continuationAction fun(obj:System.Threading.Tasks.Task_1_TResult_)
---@return System.Threading.Tasks.Task
function m:ContinueWith(continuationAction) end

System.Threading.Tasks.Task_1_TResult_ = m
return m
