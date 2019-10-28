---@class System.Threading.Tasks.TaskStatus : System.Enum
---@field public Created System.Threading.Tasks.TaskStatus @static
---@field public WaitingForActivation System.Threading.Tasks.TaskStatus @static
---@field public WaitingToRun System.Threading.Tasks.TaskStatus @static
---@field public Running System.Threading.Tasks.TaskStatus @static
---@field public WaitingForChildrenToComplete System.Threading.Tasks.TaskStatus @static
---@field public RanToCompletion System.Threading.Tasks.TaskStatus @static
---@field public Canceled System.Threading.Tasks.TaskStatus @static
---@field public Faulted System.Threading.Tasks.TaskStatus @static
---@field public value__ number
local m = {}

System.Threading.Tasks.TaskStatus = m
return m
