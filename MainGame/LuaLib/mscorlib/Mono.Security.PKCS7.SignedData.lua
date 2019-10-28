---@class Mono.Security.PKCS7.SignedData : System.Object
---@field public ASN1 Mono.Security.ASN1
---@field public Certificates Mono.Security.X509.X509CertificateCollection
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo
---@field public Crls System.Collections.ArrayList
---@field public HashName string
---@field public SignerInfo Mono.Security.PKCS7.SignerInfo
---@field public Version number
---@field public UseAuthenticatedAttributes boolean
local m = {}

---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return boolean
function m:VerifySignature(aa) end

---@return string
function m:GetBytes() end

Mono.Security.PKCS7.SignedData = m
return m
