---@class System.Threading.Tasks.Task.SetOnInvokeMres : System.Threading.ManualResetEventSlim
local m = {}

---@virtual
---@param completingTask System.Threading.Tasks.Task
function m:Invoke(completingTask) end

System.Threading.Tasks.Task.SetOnInvokeMres = m
return m
