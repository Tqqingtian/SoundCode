---@class System.Collections.IStructuralComparable : table
local m = {}

---@abstract
---@param other any
---@param comparer System.Collections.IComparer
---@return number
function m:CompareTo(other, comparer) end

System.Collections.IStructuralComparable = m
return m
