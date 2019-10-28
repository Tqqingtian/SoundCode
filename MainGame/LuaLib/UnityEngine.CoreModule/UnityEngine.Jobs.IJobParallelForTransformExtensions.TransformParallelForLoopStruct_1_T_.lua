---@class UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct_1_T_ : System.ValueType
---@field public jobReflectionData System.IntPtr @static
local m = {}

---@static
---@return System.IntPtr
function m.Initialize() end

---@static
---@param jobData any
---@param jobData2 System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return any, Unity.Jobs.LowLevel.Unsafe.JobRanges
function m.Execute(jobData, jobData2, bufferRangePatchData, ranges, jobIndex) end

UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct_1_T_ = m
return m
