---@class System.Security.Claims.Claim : System.Object
---@field public Issuer string
---@field public OriginalIssuer string
---@field public Properties System.Collections.Generic.IDictionary_2_System_String_System_String_
---@field public Subject System.Security.Claims.ClaimsIdentity
---@field public Type string
---@field public Value string
---@field public ValueType string
local m = {}

---@overload fun(identity:System.Security.Claims.ClaimsIdentity): @virtual
---@virtual
---@return System.Security.Claims.Claim
function m:Clone() end

---@virtual
---@param writer System.IO.BinaryWriter
function m:WriteTo(writer) end

---@virtual
---@return string
function m:ToString() end

System.Security.Claims.Claim = m
return m
