---@class System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract_2_TSource_TSourceReader_ : System.Object
---@field public Current System.ValueType
local m = {}

---@abstract
function m:Dispose() end

---@virtual
function m:Reset() end

---@virtual
---@return boolean
function m:MoveNext() end

System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract_2_TSource_TSourceReader_ = m
return m
