---@class System.ITupleInternal : table
local m = {}

---@abstract
---@param sb System.Text.StringBuilder
---@return string
function m:ToString(sb) end

---@abstract
---@param comparer System.Collections.IEqualityComparer
---@return number
function m:GetHashCode(comparer) end

System.ITupleInternal = m
return m
