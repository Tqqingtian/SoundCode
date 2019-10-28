---@class Unity.Jobs.LowLevel.Unsafe.JobsUtility : System.Object
---@field public MaxJobThreadCount number @static
---@field public CacheLineSize number @static
---@field public JobDebuggerEnabled boolean @static
---@field public JobCompilerEnabled boolean @static
local m = {}

---@static
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return Unity.Jobs.LowLevel.Unsafe.JobRanges, System.Int32, System.Int32
function m.GetJobRange(ranges, jobIndex) end

---@static
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return boolean, Unity.Jobs.LowLevel.Unsafe.JobRanges, System.Int32, System.Int32
function m.GetWorkStealingRange(ranges, jobIndex) end

---@static
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@return Unity.Jobs.JobHandle, Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
function m.Schedule(parameters) end

---@static
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param arrayLength number
---@param innerloopBatchCount number
---@return Unity.Jobs.JobHandle, Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
function m.ScheduleParallelFor(parameters, arrayLength, innerloopBatchCount) end

---@static
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param innerloopBatchCount number
---@param listData System.Void*
---@param listDataAtomicSafetyHandle System.Void*
---@return Unity.Jobs.JobHandle, Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
function m.ScheduleParallelForDeferArraySize(parameters, innerloopBatchCount, listData, listDataAtomicSafetyHandle) end

---@static
---@param parameters Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
---@param transfromAccesssArray System.IntPtr
---@return Unity.Jobs.JobHandle, Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobScheduleParameters
function m.ScheduleParallelForTransform(parameters, transfromAccesssArray) end

---@static
---@param bufferRangePatchData System.IntPtr
---@param jobdata System.Void*
---@param startIndex number
---@param rangeSize number
function m.PatchBufferMinMaxRanges(bufferRangePatchData, jobdata, startIndex, rangeSize) end

---@overload fun(type:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:any, managedJobFunction1:any): @static
---@overload fun(type:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:any): @static
---@overload fun(wrapperJobType:System.Type, userJobType:System.Type, jobType:Unity.Jobs.LowLevel.Unsafe.JobType, managedJobFunction0:any): @static
---@static
---@param type System.Type
---@param jobType Unity.Jobs.LowLevel.Unsafe.JobType
---@param managedJobFunction0 any
---@param managedJobFunction1 any
---@param managedJobFunction2 any
---@return System.IntPtr
function m.CreateJobReflectionData(type, jobType, managedJobFunction0, managedJobFunction1, managedJobFunction2) end

Unity.Jobs.LowLevel.Unsafe.JobsUtility = m
return m
