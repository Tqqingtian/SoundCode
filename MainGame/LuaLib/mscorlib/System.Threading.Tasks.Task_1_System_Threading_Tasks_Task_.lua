---@class System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_ : System.Threading.Tasks.Task
---@field public Factory System.Threading.Tasks.TaskFactory_1_System_Threading_Tasks_Task_ @static
---@field public Result System.Threading.Tasks.Task
local m = {}

---@return System.Runtime.CompilerServices.TaskAwaiter_1_System_Threading_Tasks_Task_
function m:GetAwaiter() end

---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable_1_System_Threading_Tasks_Task_
function m:ConfigureAwait(continueOnCapturedContext) end

---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_), cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_), scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_), continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_), cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any), state:any):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any), state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any), state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationAction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any), state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_):):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_):, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any):, state:any):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any):, state:any, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any):, state:any, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(continuationFunction:fun(arg1:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_, arg2:any):, state:any, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param continuationAction fun(obj:System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_)
---@return System.Threading.Tasks.Task
function m:ContinueWith(continuationAction) end

System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_ = m
return m
