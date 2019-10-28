---@class System.Security.Permissions.StrongNameIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Name string
---@field public PublicKey string
---@field public Version string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.StrongNameIdentityPermissionAttribute = m
return m
