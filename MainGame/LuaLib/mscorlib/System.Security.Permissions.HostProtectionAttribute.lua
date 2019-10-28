---@class System.Security.Permissions.HostProtectionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public ExternalProcessMgmt boolean
---@field public ExternalThreading boolean
---@field public MayLeakOnAbort boolean
---@field public SecurityInfrastructure boolean
---@field public SelfAffectingProcessMgmt boolean
---@field public SelfAffectingThreading boolean
---@field public SharedState boolean
---@field public Synchronization boolean
---@field public UI boolean
---@field public Resources System.Security.Permissions.HostProtectionResource
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.HostProtectionAttribute = m
return m
