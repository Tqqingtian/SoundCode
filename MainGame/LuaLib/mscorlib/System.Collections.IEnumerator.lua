---@class System.Collections.IEnumerator : table
---@field public Current any
local m = {}

---@abstract
---@return boolean
function m:MoveNext() end

---@abstract
function m:Reset() end

System.Collections.IEnumerator = m
return m
