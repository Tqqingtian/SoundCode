---@class System.Runtime.InteropServices.ComTypes.IEnumerator : table
---@field public Current any
local m = {}

---@abstract
---@return boolean
function m:MoveNext() end

---@abstract
function m:Reset() end

System.Runtime.InteropServices.ComTypes.IEnumerator = m
return m
