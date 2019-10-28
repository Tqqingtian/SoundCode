---@class System.Collections.IStructuralEquatable : table
local m = {}

---@abstract
---@param other any
---@param comparer System.Collections.IEqualityComparer
---@return boolean
function m:Equals(other, comparer) end

---@abstract
---@param comparer System.Collections.IEqualityComparer
---@return number
function m:GetHashCode(comparer) end

System.Collections.IStructuralEquatable = m
return m
