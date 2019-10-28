---@class UnityEngine.Jobs.IJobParallelForTransform : table
local m = {}

---@abstract
---@param index number
---@param transform UnityEngine.Jobs.TransformAccess
function m:Execute(index, transform) end

UnityEngine.Jobs.IJobParallelForTransform = m
return m
