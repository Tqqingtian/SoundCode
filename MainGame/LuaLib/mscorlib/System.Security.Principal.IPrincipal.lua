---@class System.Security.Principal.IPrincipal : table
---@field public Identity System.Security.Principal.IIdentity
local m = {}

---@abstract
---@param role string
---@return boolean
function m:IsInRole(role) end

System.Security.Principal.IPrincipal = m
return m
