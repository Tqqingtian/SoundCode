---@class Mono.Security.PKCS7 : System.Object
local m = {}

---@static
---@param oid string
---@param value Mono.Security.ASN1
---@return Mono.Security.ASN1
function m.Attribute(oid, value) end

---@overload fun(oid:string, parameters:Mono.Security.ASN1): @static
---@static
---@param oid string
---@return Mono.Security.ASN1
function m.AlgorithmIdentifier(oid) end

---@static
---@param x509 Mono.Security.X509.X509Certificate
---@return Mono.Security.ASN1
function m.IssuerAndSerialNumber(x509) end

Mono.Security.PKCS7 = m
return m
