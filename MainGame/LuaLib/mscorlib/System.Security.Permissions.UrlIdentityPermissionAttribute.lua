---@class System.Security.Permissions.UrlIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Url string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.UrlIdentityPermissionAttribute = m
return m
