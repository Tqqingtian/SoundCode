---@class System.Security.Principal.WindowsPrincipal : System.Security.Claims.ClaimsPrincipal
---@field public Identity System.Security.Principal.IIdentity
---@field public DeviceClaims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
---@field public UserClaims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
local m = {}

---@overload fun(role:string): @virtual
---@overload fun(role:System.Security.Principal.WindowsBuiltInRole): @virtual
---@overload fun(sid:System.Security.Principal.SecurityIdentifier): @virtual
---@virtual
---@param rid number
---@return boolean
function m:IsInRole(rid) end

System.Security.Principal.WindowsPrincipal = m
return m
