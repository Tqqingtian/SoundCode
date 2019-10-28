---@class System.Security.Policy.IIdentityPermissionFactory : table
local m = {}

---@abstract
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function m:CreateIdentityPermission(evidence) end

System.Security.Policy.IIdentityPermissionFactory = m
return m
