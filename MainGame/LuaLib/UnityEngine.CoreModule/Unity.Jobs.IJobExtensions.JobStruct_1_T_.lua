---@class Unity.Jobs.IJobExtensions.JobStruct_1_T_ : System.ValueType
---@field public jobReflectionData System.IntPtr @static
local m = {}

---@static
---@return System.IntPtr
function m.Initialize() end

---@static
---@param data any
---@param additionalPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return any, Unity.Jobs.LowLevel.Unsafe.JobRanges
function m.Execute(data, additionalPtr, bufferRangePatchData, ranges, jobIndex) end

Unity.Jobs.IJobExtensions.JobStruct_1_T_ = m
return m
