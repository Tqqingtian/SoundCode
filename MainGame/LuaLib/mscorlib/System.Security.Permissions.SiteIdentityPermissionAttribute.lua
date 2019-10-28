---@class System.Security.Permissions.SiteIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Site string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.SiteIdentityPermissionAttribute = m
return m
