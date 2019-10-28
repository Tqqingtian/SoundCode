---@class System.Threading.Tasks.UnobservedTaskExceptionEventArgs : System.EventArgs
---@field public Observed boolean
---@field public Exception System.AggregateException
local m = {}

function m:SetObserved() end

System.Threading.Tasks.UnobservedTaskExceptionEventArgs = m
return m
