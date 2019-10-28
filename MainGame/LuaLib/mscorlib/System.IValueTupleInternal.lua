---@class System.IValueTupleInternal : table
local m = {}

---@abstract
---@param comparer System.Collections.IEqualityComparer
---@return number
function m:GetHashCode(comparer) end

---@abstract
---@return string
function m:ToStringEnd() end

System.IValueTupleInternal = m
return m
