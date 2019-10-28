---@class System.Threading.Tasks.Task.SetOnCountdownMres : System.Threading.ManualResetEventSlim
local m = {}

---@virtual
---@param completingTask System.Threading.Tasks.Task
function m:Invoke(completingTask) end

System.Threading.Tasks.Task.SetOnCountdownMres = m
return m
