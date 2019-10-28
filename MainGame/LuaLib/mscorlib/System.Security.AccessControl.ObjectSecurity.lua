---@class System.Security.AccessControl.ObjectSecurity : System.Object
---@field public AccessRightType System.Type
---@field public AccessRuleType System.Type
---@field public AuditRuleType System.Type
---@field public AreAccessRulesCanonical boolean
---@field public AreAccessRulesProtected boolean
---@field public AreAuditRulesCanonical boolean
---@field public AreAuditRulesProtected boolean
local m = {}

---@abstract
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function m:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type) end

---@abstract
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function m:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags) end

---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function m:GetGroup(targetType) end

---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function m:GetOwner(targetType) end

---@return string
function m:GetSecurityDescriptorBinaryForm() end

---@param includeSections System.Security.AccessControl.AccessControlSections
---@return string
function m:GetSecurityDescriptorSddlForm(includeSections) end

---@static
---@return boolean
function m.IsSddlConversionSupported() end

---@virtual
---@param modification System.Security.AccessControl.AccessControlModification
---@param rule System.Security.AccessControl.AccessRule
---@return boolean, System.Boolean
function m:ModifyAccessRule(modification, rule) end

---@virtual
---@param modification System.Security.AccessControl.AccessControlModification
---@param rule System.Security.AccessControl.AuditRule
---@return boolean, System.Boolean
function m:ModifyAuditRule(modification, rule) end

---@virtual
---@param identity System.Security.Principal.IdentityReference
function m:PurgeAccessRules(identity) end

---@virtual
---@param identity System.Security.Principal.IdentityReference
function m:PurgeAuditRules(identity) end

---@param isProtected boolean
---@param preserveInheritance boolean
function m:SetAccessRuleProtection(isProtected, preserveInheritance) end

---@param isProtected boolean
---@param preserveInheritance boolean
function m:SetAuditRuleProtection(isProtected, preserveInheritance) end

---@param identity System.Security.Principal.IdentityReference
function m:SetGroup(identity) end

---@param identity System.Security.Principal.IdentityReference
function m:SetOwner(identity) end

---@overload fun(binaryForm:string, includeSections:System.Security.AccessControl.AccessControlSections)
---@param binaryForm string
function m:SetSecurityDescriptorBinaryForm(binaryForm) end

---@overload fun(sddlForm:string, includeSections:System.Security.AccessControl.AccessControlSections)
---@param sddlForm string
function m:SetSecurityDescriptorSddlForm(sddlForm) end

System.Security.AccessControl.ObjectSecurity = m
return m
