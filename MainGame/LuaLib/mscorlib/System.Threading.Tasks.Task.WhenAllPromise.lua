---@class System.Threading.Tasks.Task.WhenAllPromise : System.Threading.Tasks.Task_1_System_Threading_Tasks_VoidTaskResult_
local m = {}

---@virtual
---@param completedTask System.Threading.Tasks.Task
function m:Invoke(completedTask) end

System.Threading.Tasks.Task.WhenAllPromise = m
return m
