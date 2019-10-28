---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract_2_TSource_TCollection_ : System.Object
---@field public SupportsDynamicPartitions boolean
local m = {}

---@virtual
---@param partitionCount number
---@return any[]
function m:GetOrderablePartitions(partitionCount) end

---@virtual
---@return any
function m:GetOrderableDynamicPartitions() end

System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract_2_TSource_TCollection_ = m
return m
