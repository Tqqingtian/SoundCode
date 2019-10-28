---@class Unity.Jobs.IJobExtensions : System.Object
local m = {}

---@overload fun(jobData:System.ValueType): @static
---@static
---@param jobData System.ValueType
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.Schedule(jobData, dependsOn) end

---@static
---@param jobData System.ValueType
function m.Run(jobData) end

Unity.Jobs.IJobExtensions = m
return m
