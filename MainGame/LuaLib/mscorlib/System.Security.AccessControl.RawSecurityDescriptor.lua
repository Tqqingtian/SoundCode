---@class System.Security.AccessControl.RawSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor
---@field public ControlFlags System.Security.AccessControl.ControlFlags
---@field public DiscretionaryAcl System.Security.AccessControl.RawAcl
---@field public Group System.Security.Principal.SecurityIdentifier
---@field public Owner System.Security.Principal.SecurityIdentifier
---@field public ResourceManagerControl number
---@field public SystemAcl System.Security.AccessControl.RawAcl
local m = {}

---@param flags System.Security.AccessControl.ControlFlags
function m:SetFlags(flags) end

System.Security.AccessControl.RawSecurityDescriptor = m
return m
