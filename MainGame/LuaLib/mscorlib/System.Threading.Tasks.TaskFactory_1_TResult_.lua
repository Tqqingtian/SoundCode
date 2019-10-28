---@class System.Threading.Tasks.TaskFactory_1_TResult_ : System.Object
---@field public CancellationToken System.Threading.CancellationToken
---@field public Scheduler System.Threading.Tasks.TaskScheduler
---@field public CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field public ContinuationOptions System.Threading.Tasks.TaskContinuationOptions
local m = {}

---@overload fun(_function:fun():, cancellationToken:System.Threading.CancellationToken):
---@overload fun(_function:fun():, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(_function:fun():, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(_function:fun(arg:any):, state:any):
---@overload fun(_function:fun(arg:any):, state:any, cancellationToken:System.Threading.CancellationToken):
---@overload fun(_function:fun(arg:any):, state:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(_function:fun(arg:any):, state:any, cancellationToken:System.Threading.CancellationToken, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param _function fun():
---@return System.Threading.Tasks.Task
function m:StartNew(_function) end

---@overload fun(asyncResult:System.IAsyncResult, endMethod:fun(arg:System.IAsyncResult):, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(asyncResult:System.IAsyncResult, endMethod:fun(arg:System.IAsyncResult):, creationOptions:System.Threading.Tasks.TaskCreationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(beginMethod:fun(arg1:fun(ar:System.IAsyncResult), arg2:any):, endMethod:fun(arg:System.IAsyncResult):, state:any):
---@overload fun(beginMethod:fun(arg1:fun(ar:System.IAsyncResult), arg2:any):, endMethod:fun(arg:System.IAsyncResult):, state:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(beginMethod:fun(arg1:any, arg2:fun(ar:System.IAsyncResult), arg3:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, state:any):
---@overload fun(beginMethod:fun(arg1:any, arg2:fun(ar:System.IAsyncResult), arg3:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, state:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(beginMethod:fun(arg1:any, arg2:any, arg3:fun(ar:System.IAsyncResult), arg4:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, arg2:any, state:any):
---@overload fun(beginMethod:fun(arg1:any, arg2:any, arg3:fun(ar:System.IAsyncResult), arg4:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, arg2:any, state:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@overload fun(beginMethod:fun(arg1:any, arg2:any, arg3:any, arg4:fun(ar:System.IAsyncResult), arg5:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, arg2:any, arg3:any, state:any):
---@overload fun(beginMethod:fun(arg1:any, arg2:any, arg3:any, arg4:fun(ar:System.IAsyncResult), arg5:any):, endMethod:fun(arg:System.IAsyncResult):, arg1:any, arg2:any, arg3:any, state:any, creationOptions:System.Threading.Tasks.TaskCreationOptions):
---@param asyncResult System.IAsyncResult
---@param endMethod fun(arg:System.IAsyncResult):
---@return System.Threading.Tasks.Task
function m:FromAsync(asyncResult, endMethod) end

---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task[]):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction fun(arg:System.Threading.Tasks.Task[]):
---@return System.Threading.Tasks.Task
function m:ContinueWhenAll(tasks, continuationFunction) end

---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, cancellationToken:System.Threading.CancellationToken):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, continuationOptions:System.Threading.Tasks.TaskContinuationOptions):
---@overload fun(tasks:System.Threading.Tasks.Task[], continuationFunction:fun(arg:System.Threading.Tasks.Task):, cancellationToken:System.Threading.CancellationToken, continuationOptions:System.Threading.Tasks.TaskContinuationOptions, scheduler:System.Threading.Tasks.TaskScheduler):
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction fun(arg:System.Threading.Tasks.Task):
---@return System.Threading.Tasks.Task
function m:ContinueWhenAny(tasks, continuationFunction) end

System.Threading.Tasks.TaskFactory_1_TResult_ = m
return m
