---@class System.Security.Principal.GenericIdentity : System.Security.Claims.ClaimsIdentity
---@field public Claims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
---@field public Name string
---@field public AuthenticationType string
---@field public IsAuthenticated boolean
local m = {}

---@virtual
---@return System.Security.Claims.ClaimsIdentity
function m:Clone() end

System.Security.Principal.GenericIdentity = m
return m
