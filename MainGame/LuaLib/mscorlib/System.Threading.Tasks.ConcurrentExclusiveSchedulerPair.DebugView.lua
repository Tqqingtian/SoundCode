---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView : System.Object
---@field public Mode System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field public ScheduledExclusive System.Collections.Generic.IEnumerable_1_System_Threading_Tasks_Task_
---@field public ScheduledConcurrent System.Collections.Generic.IEnumerable_1_System_Threading_Tasks_Task_
---@field public CurrentlyExecutingTaskCount number
---@field public TargetScheduler System.Threading.Tasks.TaskScheduler
local m = {}

System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView = m
return m
