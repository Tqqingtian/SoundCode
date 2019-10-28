---@class System.Security.AccessControl.CommonObjectSecurity : System.Security.AccessControl.ObjectSecurity
local m = {}

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

System.Security.AccessControl.CommonObjectSecurity = m
return m
