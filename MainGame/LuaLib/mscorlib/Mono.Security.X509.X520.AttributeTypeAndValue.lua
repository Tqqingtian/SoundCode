---@class Mono.Security.X509.X520.AttributeTypeAndValue : System.Object
---@field public Value string
---@field public ASN1 Mono.Security.ASN1
local m = {}

---@overload fun():
---@param encoding number
---@return string
function m:GetBytes(encoding) end

Mono.Security.X509.X520.AttributeTypeAndValue = m
return m
