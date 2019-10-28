---@class System.Security.Policy.PermissionRequestEvidence : System.Security.Policy.EvidenceBase
---@field public DeniedPermissions System.Security.PermissionSet
---@field public OptionalPermissions System.Security.PermissionSet
---@field public RequestedPermissions System.Security.PermissionSet
local m = {}

---@return System.Security.Policy.PermissionRequestEvidence
function m:Copy() end

---@virtual
---@return string
function m:ToString() end

System.Security.Policy.PermissionRequestEvidence = m
return m
