---@class System.Security.Permissions.PrincipalPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Authenticated boolean
---@field public Name string
---@field public Role string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.PrincipalPermissionAttribute = m
return m
