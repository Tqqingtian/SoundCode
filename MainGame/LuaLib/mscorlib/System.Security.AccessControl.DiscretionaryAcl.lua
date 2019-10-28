---@class System.Security.AccessControl.DiscretionaryAcl : System.Security.AccessControl.CommonAcl
local m = {}

---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAccessRule)
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:AddAccess(accessType, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid):
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAccessRule):
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
---@return boolean
function m:RemoveAccess(accessType, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAccessRule)
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:RemoveAccessSpecific(accessType, sid, accessMask, inheritanceFlags, propagationFlags) end

---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, accessMask:number, inheritanceFlags:System.Security.AccessControl.InheritanceFlags, propagationFlags:System.Security.AccessControl.PropagationFlags, objectFlags:System.Security.AccessControl.ObjectAceFlags, objectType:System.Guid, inheritedObjectType:System.Guid)
---@overload fun(accessType:System.Security.AccessControl.AccessControlType, sid:System.Security.Principal.SecurityIdentifier, rule:System.Security.AccessControl.ObjectAccessRule)
---@param accessType System.Security.AccessControl.AccessControlType
---@param sid System.Security.Principal.SecurityIdentifier
---@param accessMask number
---@param inheritanceFlags System.Security.AccessControl.InheritanceFlags
---@param propagationFlags System.Security.AccessControl.PropagationFlags
function m:SetAccess(accessType, sid, accessMask, inheritanceFlags, propagationFlags) end

System.Security.AccessControl.DiscretionaryAcl = m
return m
