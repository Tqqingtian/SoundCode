---@class System.Collections.Concurrent.OrderablePartitioner_1.EnumeratorDropIndices_TSource_ : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Dispose() end

---@virtual
function m:Reset() end

System.Collections.Concurrent.OrderablePartitioner_1.EnumeratorDropIndices_TSource_ = m
return m
