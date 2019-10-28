---@class System.Collections.Concurrent.OrderablePartitioner_1_TSource_ : System.Object
---@field public KeysOrderedInEachPartition boolean
---@field public KeysOrderedAcrossPartitions boolean
---@field public KeysNormalized boolean
local m = {}

---@abstract
---@param partitionCount number
---@return any[]
function m:GetOrderablePartitions(partitionCount) end

---@virtual
---@return any
function m:GetOrderableDynamicPartitions() end

---@virtual
---@param partitionCount number
---@return any[]
function m:GetPartitions(partitionCount) end

---@virtual
---@return any
function m:GetDynamicPartitions() end

System.Collections.Concurrent.OrderablePartitioner_1_TSource_ = m
return m
