---@class System.Security.Permissions.KeyContainerPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags
---@field public KeyContainerName string
---@field public KeySpec number
---@field public KeyStore string
---@field public ProviderName string
---@field public ProviderType number
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.KeyContainerPermissionAttribute = m
return m
