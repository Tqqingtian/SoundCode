---@class Unity.Jobs.JobHandle : System.ValueType
---@field public IsCompleted boolean
local m = {}

function m:Complete() end

---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle, job2:Unity.Jobs.JobHandle):(, Unity.Jobs.JobHandle, Unity.Jobs.JobHandle) @static
---@overload fun(jobs:Unity.Collections.NativeArray_1_Unity_Jobs_JobHandle_) @static
---@static
---@param job0 Unity.Jobs.JobHandle
---@param job1 Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle, Unity.Jobs.JobHandle
function m.CompleteAll(job0, job1) end

---@static
function m.ScheduleBatchedJobs() end

---@overload fun(job0:Unity.Jobs.JobHandle, job1:Unity.Jobs.JobHandle, job2:Unity.Jobs.JobHandle): @static
---@overload fun(jobs:Unity.Collections.NativeArray_1_Unity_Jobs_JobHandle_): @static
---@static
---@param job0 Unity.Jobs.JobHandle
---@param job1 Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.CombineDependencies(job0, job1) end

---@static
---@param jobHandle Unity.Jobs.JobHandle
---@param dependsOn Unity.Jobs.JobHandle
---@return boolean
function m.CheckFenceIsDependencyOrDidSyncFence(jobHandle, dependsOn) end

Unity.Jobs.JobHandle = m
return m
