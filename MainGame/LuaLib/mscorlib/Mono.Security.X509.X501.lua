---@class Mono.Security.X509.X501 : System.Object
local m = {}

---@overload fun(seq:Mono.Security.ASN1, reversed:boolean, separator:string, quotes:boolean): @static
---@static
---@param seq Mono.Security.ASN1
---@return string
function m.ToString(seq) end

---@static
---@param rdn string
---@return Mono.Security.ASN1
function m.FromString(rdn) end

Mono.Security.X509.X501 = m
return m
