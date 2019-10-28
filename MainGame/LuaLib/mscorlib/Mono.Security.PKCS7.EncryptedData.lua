---@class Mono.Security.PKCS7.EncryptedData : System.Object
---@field public ASN1 Mono.Security.ASN1
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo
---@field public EncryptionAlgorithm Mono.Security.PKCS7.ContentInfo
---@field public EncryptedContent string
---@field public Version number
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.PKCS7.EncryptedData = m
return m
