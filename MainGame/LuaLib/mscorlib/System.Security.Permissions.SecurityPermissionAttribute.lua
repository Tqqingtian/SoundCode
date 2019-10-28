---@class System.Security.Permissions.SecurityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public Assertion boolean
---@field public BindingRedirects boolean
---@field public ControlAppDomain boolean
---@field public ControlDomainPolicy boolean
---@field public ControlEvidence boolean
---@field public ControlPolicy boolean
---@field public ControlPrincipal boolean
---@field public ControlThread boolean
---@field public Execution boolean
---@field public Infrastructure boolean
---@field public RemotingConfiguration boolean
---@field public SerializationFormatter boolean
---@field public SkipVerification boolean
---@field public UnmanagedCode boolean
---@field public Flags System.Security.Permissions.SecurityPermissionFlag
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.SecurityPermissionAttribute = m
return m
