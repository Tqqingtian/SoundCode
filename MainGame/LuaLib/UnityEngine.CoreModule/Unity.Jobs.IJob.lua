---@class Unity.Jobs.IJob : table
local m = {}

---@abstract
function m:Execute() end

Unity.Jobs.IJob = m
return m
