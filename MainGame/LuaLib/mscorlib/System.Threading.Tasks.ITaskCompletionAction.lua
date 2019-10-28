---@class System.Threading.Tasks.ITaskCompletionAction : table
local m = {}

---@abstract
---@param completingTask System.Threading.Tasks.Task
function m:Invoke(completingTask) end

System.Threading.Tasks.ITaskCompletionAction = m
return m
