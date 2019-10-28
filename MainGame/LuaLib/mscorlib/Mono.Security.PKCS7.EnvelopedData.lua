---@class Mono.Security.PKCS7.EnvelopedData : System.Object
---@field public RecipientInfos System.Collections.ArrayList
---@field public ASN1 Mono.Security.ASN1
---@field public ContentInfo Mono.Security.PKCS7.ContentInfo
---@field public EncryptionAlgorithm Mono.Security.PKCS7.ContentInfo
---@field public EncryptedContent string
---@field public Version number
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.PKCS7.EnvelopedData = m
return m
