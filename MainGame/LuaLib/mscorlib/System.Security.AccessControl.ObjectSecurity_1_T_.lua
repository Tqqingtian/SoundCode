---@class System.Security.AccessControl.ObjectSecurity_1_T_ : System.Security.AccessControl.NativeObjectSecurity
---@field public AccessRightType System.Type
---@field public AccessRuleType System.Type
---@field public AuditRuleType System.Type
local m = {}

---@virtual
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@return System.Security.AccessControl.AccessRule
function m:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
function m:AddAccessRule(rule) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
---@return boolean
function m:RemoveAccessRule(rule) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
function m:RemoveAccessRuleAll(rule) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
function m:RemoveAccessRuleSpecific(rule) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
function m:ResetAccessRule(rule) end

---@virtual
---@param rule System.Security.AccessControl.AccessRule
function m:SetAccessRule(rule) end

---@virtual
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@return System.Security.AccessControl.AuditRule
function m:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags) end

---@virtual
---@param rule System.Security.AccessControl.AuditRule
function m:AddAuditRule(rule) end

---@virtual
---@param rule System.Security.AccessControl.AuditRule
---@return boolean
function m:RemoveAuditRule(rule) end

---@virtual
---@param rule System.Security.AccessControl.AuditRule
function m:RemoveAuditRuleAll(rule) end

---@virtual
---@param rule System.Security.AccessControl.AuditRule
function m:RemoveAuditRuleSpecific(rule) end

---@virtual
---@param rule System.Security.AccessControl.AuditRule
function m:SetAuditRule(rule) end

System.Security.AccessControl.ObjectSecurity_1_T_ = m
return m
