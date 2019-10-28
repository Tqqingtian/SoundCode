---@class System.Security.Permissions.ZoneIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Zone System.Security.SecurityZone
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.ZoneIdentityPermissionAttribute = m
return m
