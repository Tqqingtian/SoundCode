---@class System.IServiceProvider : table
local m = {}

---@abstract
---@param serviceType System.Type
---@return any
function m:GetService(serviceType) end

System.IServiceProvider = m
return m
