---@class System.Security.Permissions.GacIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.GacIdentityPermissionAttribute = m
return m
