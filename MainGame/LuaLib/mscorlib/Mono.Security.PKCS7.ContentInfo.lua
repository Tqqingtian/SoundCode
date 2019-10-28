---@class Mono.Security.PKCS7.ContentInfo : System.Object
---@field public ASN1 Mono.Security.ASN1
---@field public Content Mono.Security.ASN1
---@field public ContentType string
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.PKCS7.ContentInfo = m
return m
