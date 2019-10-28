---@class UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct_1.ExecuteJobFunction_T_ : System.MulticastDelegate
local m = {}

---@virtual
---@param jobData any
---@param additionalPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return any, Unity.Jobs.LowLevel.Unsafe.JobRanges
function m:Invoke(jobData, additionalPtr, bufferRangePatchData, ranges, jobIndex) end

---@virtual
---@param jobData any
---@param additionalPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, any, Unity.Jobs.LowLevel.Unsafe.JobRanges
function m:BeginInvoke(jobData, additionalPtr, bufferRangePatchData, ranges, jobIndex, callback, object) end

---@virtual
---@param jobData any
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return any, Unity.Jobs.LowLevel.Unsafe.JobRanges
function m:EndInvoke(jobData, ranges, result) end

UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct_1.ExecuteJobFunction_T_ = m
return m
