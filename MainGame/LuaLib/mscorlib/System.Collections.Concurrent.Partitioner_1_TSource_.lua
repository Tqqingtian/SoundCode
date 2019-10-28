---@class System.Collections.Concurrent.Partitioner_1_TSource_ : System.Object
---@field public SupportsDynamicPartitions boolean
local m = {}

---@abstract
---@param partitionCount number
---@return any[]
function m:GetPartitions(partitionCount) end

---@virtual
---@return any
function m:GetDynamicPartitions() end

System.Collections.Concurrent.Partitioner_1_TSource_ = m
return m
