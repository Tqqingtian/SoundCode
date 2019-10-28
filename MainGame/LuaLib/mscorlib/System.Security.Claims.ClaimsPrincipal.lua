---@class System.Security.Claims.ClaimsPrincipal : System.Object
---@field public PrimaryIdentitySelector fun(arg:System.Collections.Generic.IEnumerable_1_System_Security_Claims_ClaimsIdentity_): @static
---@field public ClaimsPrincipalSelector fun(): @static
---@field public Current System.Security.Claims.ClaimsPrincipal @static
---@field public Claims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
---@field public Identities System.Collections.Generic.IEnumerable_1_System_Security_Claims_ClaimsIdentity_
---@field public Identity System.Security.Principal.IIdentity
local m = {}

---@virtual
---@return System.Security.Claims.ClaimsPrincipal
function m:Clone() end

---@virtual
---@param identity System.Security.Claims.ClaimsIdentity
function m:AddIdentity(identity) end

---@virtual
---@param identities System.Collections.Generic.IEnumerable_1_System_Security_Claims_ClaimsIdentity_
function m:AddIdentities(identities) end

---@overload fun(type:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
function m:FindAll(match) end

---@overload fun(type:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return System.Security.Claims.Claim
function m:FindFirst(match) end

---@overload fun(type:string, value:string): @virtual
---@virtual
---@param match fun(obj:System.Security.Claims.Claim):
---@return boolean
function m:HasClaim(match) end

---@virtual
---@param role string
---@return boolean
function m:IsInRole(role) end

---@virtual
---@param writer System.IO.BinaryWriter
function m:WriteTo(writer) end

System.Security.Claims.ClaimsPrincipal = m
return m
