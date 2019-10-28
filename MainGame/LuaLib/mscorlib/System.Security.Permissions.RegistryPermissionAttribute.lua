---@class System.Security.Permissions.RegistryPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All string
---@field public Create string
---@field public Read string
---@field public Write string
---@field public ChangeAccessControl string
---@field public ViewAccessControl string
---@field public ViewAndModify string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.RegistryPermissionAttribute = m
return m
