---@class System.Threading.Tasks.Parallel : System.Object
local m = {}

---@overload fun() @static
---@overload fun(parallelOptions:System.Threading.Tasks.ParallelOptions, ...:fun()|fun()[]) @static
---@overload fun(parallelOptions:System.Threading.Tasks.ParallelOptions) @static
---@static
---@param ... fun()|fun()[]
function m.Invoke(...) end

---@overload fun(fromInclusive:number, toExclusive:number, body:fun(obj:number)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(obj:number)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(obj:number)): @static
---@overload fun(fromInclusive:number, toExclusive:number, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(fromInclusive:number, toExclusive:number, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(fromInclusive:number, toExclusive:number, localInit:fun():, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(fromInclusive:number, toExclusive:number, localInit:fun():, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(fromInclusive:number, toExclusive:number, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:number, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@static
---@param fromInclusive number
---@param toExclusive number
---@param body fun(obj:number)
---@return System.Threading.Tasks.ParallelLoopResult
function m.For(fromInclusive, toExclusive, body) end

---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(obj:any)): @static
---@overload fun(source:any, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(source:any, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number)): @static
---@overload fun(source:any, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number, arg4:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number, arg4:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, body:fun(obj:any)): @static
---@overload fun(source:any, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(source:any, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number)): @static
---@overload fun(source:any, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number, arg4:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(obj:any)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:any):, localFinally:fun(obj:any)): @static
---@overload fun(source:any, parallelOptions:System.Threading.Tasks.ParallelOptions, localInit:fun():, body:fun(arg1:any, arg2:System.Threading.Tasks.ParallelLoopState, arg3:number, arg4:any):, localFinally:fun(obj:any)): @static
---@static
---@param source any
---@param body fun(obj:any)
---@return System.Threading.Tasks.ParallelLoopResult
function m.ForEach(source, body) end

System.Threading.Tasks.Parallel = m
return m
