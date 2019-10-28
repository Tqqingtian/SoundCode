---@class System.Threading.Tasks.TaskToApm : System.Object
local m = {}

---@static
---@param task System.Threading.Tasks.Task
---@param callback fun(ar:System.IAsyncResult)
---@param state any
---@return System.IAsyncResult
function m.Begin(task, callback, state) end

---@overload fun(asyncResult:System.IAsyncResult): @static
---@static
---@param asyncResult System.IAsyncResult
function m.End(asyncResult) end

System.Threading.Tasks.TaskToApm = m
return m
