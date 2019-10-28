---@class Unity.Jobs.IJobParallelFor : table
local m = {}

---@abstract
---@param index number
function m:Execute(index) end

Unity.Jobs.IJobParallelFor = m
return m
