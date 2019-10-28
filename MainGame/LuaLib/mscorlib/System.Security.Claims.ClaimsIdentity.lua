---@class System.Security.Claims.ClaimsIdentity : System.Object
---@field public DefaultIssuer string @static
---@field public DefaultNameClaimType string @static
---@field public DefaultRoleClaimType string @static
---@field public AuthenticationType string
---@field public IsAuthenticated boolean
---@field public Actor System.Security.Claims.ClaimsIdentity
---@field public BootstrapContext any
---@field public Claims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
---@field public Label string
---@field public Name string
---@field public NameClaimType string
---@field public RoleClaimType string
local m = {}

---@virtual
---@return System.Security.Claims.ClaimsIdentity
function m:Clone() end

---@virtual
---@param claim System.Security.Claims.Claim
function m:AddClaim(claim) end

---@virtual
---@param claims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
function m:AddClaims(claims) end

---@virtual
---@param claim System.Security.Claims.Claim
---@return boolean
function m:TryRemoveClaim(claim) end

---@virtual
---@param claim System.Security.Claims.Claim
function m:RemoveClaim(claim) end

---@overload fun(type:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
function m:FindAll(match) end

---@overload fun(type:string, value:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return boolean
function m:HasClaim(match) end

---@overload fun(type:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return System.Security.Claims.Claim
function m:FindFirst(match) end

---@virtual
---@param writer System.IO.BinaryWriter
function m:WriteTo(writer) end

System.Security.Claims.ClaimsIdentity = m
return m
