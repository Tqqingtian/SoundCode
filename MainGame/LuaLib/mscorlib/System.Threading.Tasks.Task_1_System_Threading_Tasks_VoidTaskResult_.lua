---@class System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_ : System.Threading.Tasks.Task
---@field public Factory System.Threading.Tasks.TaskFactory_1_System_Threading_Tasks_VoidTaskResult_ @static
---@field public Result System.Threading.Tasks.VoidTaskResult
local m = {}

---@return System.Runtime.CompilerServices.TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_
function m:GetAwaiter() end

---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_
function m:ConfigureAwait(continueOnCapturedContext) end

---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_), cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_), scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_), continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_), cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any), state:any):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any), state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any), state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_):):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_):, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any):, state:any):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any):, state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any):, state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param continuationAction fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_)
---@return System.Threading.Tasks.Task
function m:ContinueWith(continuationAction) end

System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_ = m
return m
