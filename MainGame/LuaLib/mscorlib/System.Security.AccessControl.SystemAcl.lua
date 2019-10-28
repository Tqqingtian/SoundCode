---@class System.Security.AccessControl.SystemAcl : System.Security.AccessControl.CommonAcl
local m = {}

---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAuditRule)
---@param auditFlags System.Security.AccessControl.AuditFlags
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:AddAudit(auditFlags, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):
---@overload fun(sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAuditRule):
---@param auditFlags System.Security.AccessControl.AuditFlags
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@return boolean
function m:RemoveAudit(auditFlags, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAuditRule)
---@param auditFlags System.Security.AccessControl.AuditFlags
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:RemoveAuditSpecific(auditFlags, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(auditFlags:System.Security.AccessControl.AuditFlags, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAuditRule)
---@param auditFlags System.Security.AccessControl.AuditFlags
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:SetAudit(auditFlags, sid, accessMask, inheritanceFlags, propagationFlags) end

System.Security.AccessControl.SystemAcl = m
return m
