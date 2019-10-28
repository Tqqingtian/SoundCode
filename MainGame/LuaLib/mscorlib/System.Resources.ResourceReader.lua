---@class System.Resources.ResourceReader : System.Object
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@param resourceName string
---@return System.String, System.Byte__
function m:GetResourceData(resourceName) end

System.Resources.ResourceReader = m
return m
