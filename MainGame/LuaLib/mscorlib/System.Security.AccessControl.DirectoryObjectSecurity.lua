---@class System.Security.AccessControl.DirectoryObjectSecurity : System.Security.AccessControl.ObjectSecurity
local m = {}

---@virtual
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param type System.Security.AccessControl.AccessControlType
---@param objectType System.Guid
---@param inheritedObjectType System.Guid
---@return System.Security.AccessControl.AccessRule
function m:AccessRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, type, objectType, inheritedObjectType) end

---@virtual
---@param identityReference System.Security.Principal.IdentityReference
---@param accessMask number
---@param isInherited boolean
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@param flags System.Security.AccessControl.AuditFlags
---@param objectType System.Guid
---@param inheritedObjectType System.Guid
---@return System.Security.AccessControl.AuditRule
function m:AuditRuleFactory(identityReference, accessMask, isInherited, inheritanceFlags, propagationFlags, flags, objectType, inheritedObjectType) end

---@param includeExplicit boolean
---@param includeInherited boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function m:GetAccessRules(includeExplicit, includeInherited, targetType) end

---@param includeExplicit boolean
---@param includeInherited boolean
---@param targetType System.Type
---@return System.Security.AccessControl.AuthorizationRuleCollection
function m:GetAuditRules(includeExplicit, includeInherited, targetType) end

System.Security.AccessControl.DirectoryObjectSecurity = m
return m
