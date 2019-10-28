---@class System.Threading.Tasks.ParallelLoopState : System.Object
---@field public ShouldExitCurrentIteration boolean
---@field public IsStopped boolean
---@field public IsExceptional boolean
---@field public LowestBreakIteration System.Nullable_1_System_Int64_
local m = {}

function m:Stop() end

function m:Break() end

System.Threading.Tasks.ParallelLoopState = m
return m
