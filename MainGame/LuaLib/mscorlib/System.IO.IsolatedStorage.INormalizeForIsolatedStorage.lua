---@class System.IO.IsolatedStorage.INormalizeForIsolatedStorage : table
local m = {}

---@abstract
---@return any
function m:Normalize() end

System.IO.IsolatedStorage.INormalizeForIsolatedStorage = m
return m
