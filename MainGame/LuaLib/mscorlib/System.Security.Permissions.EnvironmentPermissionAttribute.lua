---@class System.Security.Permissions.EnvironmentPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All string
---@field public Read string
---@field public Write string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.EnvironmentPermissionAttribute = m
return m
