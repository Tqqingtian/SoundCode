---@class System.Security.Permissions.PublisherIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public CertFile string
---@field public SignedFile string
---@field public X509Certificate string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.PublisherIdentityPermissionAttribute = m
return m
