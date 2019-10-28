---@class Mono.Security.PKCS7.SignerInfo : System.Object
---@field public IssuerName string
---@field public SerialNumber string
---@field public SubjectKeyIdentifier string
---@field public ASN1 Mono.Security.ASN1
---@field public AuthenticatedAttributes System.Collections.ArrayList
---@field public Certificate Mono.Security.X509.X509Certificate
---@field public HashName string
---@field public Key System.Security.Cryptography.AsymmetricAlgorithm
---@field public Signature string
---@field public UnauthenticatedAttributes System.Collections.ArrayList
---@field public Version number
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.PKCS7.SignerInfo = m
return m
