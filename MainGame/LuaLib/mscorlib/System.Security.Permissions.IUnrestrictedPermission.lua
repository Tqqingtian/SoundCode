---@class System.Security.Permissions.IUnrestrictedPermission : table
local m = {}

---@abstract
---@return boolean
function m:IsUnrestricted() end

System.Security.Permissions.IUnrestrictedPermission = m
return m
