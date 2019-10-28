---@class System.Security.AccessControl.CommonSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor
---@field public ControlFlags System.Security.AccessControl.ControlFlags
---@field public DiscretionaryAcl System.Security.AccessControl.DiscretionaryAcl
---@field public Group System.Security.Principal.SecurityIdentifier
---@field public IsContainer boolean
---@field public IsDiscretionaryAclCanonical boolean
---@field public IsDS boolean
---@field public IsSystemAclCanonical boolean
---@field public Owner System.Security.Principal.SecurityIdentifier
---@field public SystemAcl System.Security.AccessControl.SystemAcl
local m = {}

---@param sid System.Security.Principal.SecurityIdentifier
function m:PurgeAccessControl(sid) end

---@param sid System.Security.Principal.SecurityIdentifier
function m:PurgeAudit(sid) end

---@param isProtected boolean
---@param preserveInheritance boolean
function m:SetDiscretionaryAclProtection(isProtected, preserveInheritance) end

---@param isProtected boolean
---@param preserveInheritance boolean
function m:SetSystemAclProtection(isProtected, preserveInheritance) end

---@param revision number
---@param trusted number
function m:AddDiscretionaryAcl(revision, trusted) end

---@param revision number
---@param trusted number
function m:AddSystemAcl(revision, trusted) end

System.Security.AccessControl.CommonSecurityDescriptor = m
return m
