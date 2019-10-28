---@class System.Security.Permissions.IsolatedStorageFilePermissionAttribute : System.Security.Permissions.IsolatedStoragePermissionAttribute
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.IsolatedStorageFilePermissionAttribute = m
return m
