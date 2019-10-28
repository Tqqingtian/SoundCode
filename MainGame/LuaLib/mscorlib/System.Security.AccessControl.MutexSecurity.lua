---@class System.Security.AccessControl.MutexSecurity : System.Security.AccessControl.NativeObjectSecurity
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

---@param rule System.Security.AccessControl.MutexAccessRule
function m:AddAccessRule(rule) end

---@param rule System.Security.AccessControl.MutexAccessRule
---@return boolean
function m:RemoveAccessRule(rule) end

---@param rule System.Security.AccessControl.MutexAccessRule
function m:RemoveAccessRuleAll(rule) end

---@param rule System.Security.AccessControl.MutexAccessRule
function m:RemoveAccessRuleSpecific(rule) end

---@param rule System.Security.AccessControl.MutexAccessRule
function m:ResetAccessRule(rule) end

---@param rule System.Security.AccessControl.MutexAccessRule
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

---@param rule System.Security.AccessControl.MutexAuditRule
function m:AddAuditRule(rule) end

---@param rule System.Security.AccessControl.MutexAuditRule
---@return boolean
function m:RemoveAuditRule(rule) end

---@param rule System.Security.AccessControl.MutexAuditRule
function m:RemoveAuditRuleAll(rule) end

---@param rule System.Security.AccessControl.MutexAuditRule
function m:RemoveAuditRuleSpecific(rule) end

---@param rule System.Security.AccessControl.MutexAuditRule
function m:SetAuditRule(rule) end

System.Security.AccessControl.MutexSecurity = m
return m
