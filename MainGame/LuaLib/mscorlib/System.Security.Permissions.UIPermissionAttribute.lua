---@class System.Security.Permissions.UIPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Clipboard System.Security.Permissions.UIPermissionClipboard
---@field public Window System.Security.Permissions.UIPermissionWindow
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.UIPermissionAttribute = m
return m
