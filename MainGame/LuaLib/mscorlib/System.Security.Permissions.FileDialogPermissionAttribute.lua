---@class System.Security.Permissions.FileDialogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Open boolean
---@field public Save boolean
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.FileDialogPermissionAttribute = m
return m
