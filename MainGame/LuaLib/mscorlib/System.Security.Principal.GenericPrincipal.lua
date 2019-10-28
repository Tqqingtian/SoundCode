---@class System.Security.Principal.GenericPrincipal : System.Security.Claims.ClaimsPrincipal
---@field public Identity System.Security.Principal.IIdentity
local m = {}

---@virtual
---@param role string
---@return boolean
function m:IsInRole(role) end

System.Security.Principal.GenericPrincipal = m
return m
