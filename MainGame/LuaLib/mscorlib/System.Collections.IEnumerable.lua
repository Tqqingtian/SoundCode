---@class System.Collections.IEnumerable : table
local m = {}

---@abstract
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Collections.IEnumerable = m
return m
