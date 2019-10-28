---@class System.Runtime.InteropServices.ComTypes.IEnumerable : table
local m = {}

---@abstract
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Runtime.InteropServices.ComTypes.IEnumerable = m
return m
