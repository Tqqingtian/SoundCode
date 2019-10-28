---@class System.Runtime.InteropServices.ICustomAdapter : table
local m = {}

---@abstract
---@return any
function m:GetUnderlyingObject() end

System.Runtime.InteropServices.ICustomAdapter = m
return m
