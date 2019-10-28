---@class System.Security.Permissions.ReflectionPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Flags System.Security.Permissions.ReflectionPermissionFlag
---@field public MemberAccess boolean
---@field public ReflectionEmit boolean
---@field public RestrictedMemberAccess boolean
---@field public TypeInformation boolean
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.ReflectionPermissionAttribute = m
return m
