---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable_1_TSource_ : System.Object
---@field public SupportsDynamicPartitions boolean
local m = {}

---@virtual
---@param partitionCount number
---@return any[]
function m:GetOrderablePartitions(partitionCount) end

---@virtual
---@return any
function m:GetOrderableDynamicPartitions() end

System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable_1_TSource_ = m
return m
