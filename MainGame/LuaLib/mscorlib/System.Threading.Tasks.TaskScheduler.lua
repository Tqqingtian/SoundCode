---@class System.Threading.Tasks.TaskScheduler : System.Object
---@field public Default System.Threading.Tasks.TaskScheduler @static
---@field public Current System.Threading.Tasks.TaskScheduler @static
---@field public MaximumConcurrencyLevel number
---@field public Id number
local m = {}

---@static
---@return System.Threading.Tasks.TaskScheduler
function m.FromCurrentSynchronizationContext() end

---@static
---@param value fun(sender:any, e:System.Threading.Tasks.UnobservedTaskExceptionEventArgs)
function m.add_UnobservedTaskException(value) end

---@static
---@param value fun(sender:any, e:System.Threading.Tasks.UnobservedTaskExceptionEventArgs)
function m.remove_UnobservedTaskException(value) end

System.Threading.Tasks.TaskScheduler = m
return m
