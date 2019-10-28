---@class Unity.Jobs.IJobParallelForExtensions : System.Object
local m = {}

---@overload fun(jobData:System.ValueType, arrayLength:number, innerloopBatchCount:number): @static
---@static
---@param jobData System.ValueType
---@param arrayLength number
---@param innerloopBatchCount number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.Schedule(jobData, arrayLength, innerloopBatchCount, dependsOn) end

---@static
---@param jobData System.ValueType
---@param arrayLength number
function m.Run(jobData, arrayLength) end

Unity.Jobs.IJobParallelForExtensions = m
return m
