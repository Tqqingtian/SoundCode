---@class System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise : System.Threading.Tasks.Task_1_System_Threading_Tasks_Task_
local m = {}

---@virtual
---@param completingTask System.Threading.Tasks.Task
function m:Invoke(completingTask) end

System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise = m
return m
