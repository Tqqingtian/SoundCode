---@class System.Security.Permissions.IBuiltInPermission : table
local m = {}

---@abstract
---@return number
function m:GetTokenIndex() end

System.Security.Permissions.IBuiltInPermission = m
return m
