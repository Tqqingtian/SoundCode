---@class System.Resources.IResourceReader : table
local m = {}

---@abstract
function m:Close() end

---@abstract
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

System.Resources.IResourceReader = m
return m
