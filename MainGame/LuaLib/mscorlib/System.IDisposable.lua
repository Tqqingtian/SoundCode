---@class System.IDisposable : table
local m = {}

---@abstract
function m:Dispose() end

System.IDisposable = m
return m
