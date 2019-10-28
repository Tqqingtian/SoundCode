---@class System.Security.Permissions.FileIOPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public All string
---@field public Append string
---@field public PathDiscovery string
---@field public Read string
---@field public Write string
---@field public AllFiles System.Security.Permissions.FileIOPermissionAccess
---@field public AllLocalFiles System.Security.Permissions.FileIOPermissionAccess
---@field public ChangeAccessControl string
---@field public ViewAccessControl string
---@field public ViewAndModify string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.FileIOPermissionAttribute = m
return m
