---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair : System.Object
---@field public Completion System.Threading.Tasks.Task
---@field public ConcurrentScheduler System.Threading.Tasks.TaskScheduler
---@field public ExclusiveScheduler System.Threading.Tasks.TaskScheduler
local m = {}

function m:Complete() end

System.Threading.Tasks.ConcurrentExclusiveSchedulerPair = m
return m
