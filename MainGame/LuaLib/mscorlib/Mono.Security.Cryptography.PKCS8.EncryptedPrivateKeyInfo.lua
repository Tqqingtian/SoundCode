---@class Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo : System.Object
---@field public Algorithm string
---@field public EncryptedData string
---@field public Salt string
---@field public IterationCount number
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.Cryptography.PKCS8.EncryptedPrivateKeyInfo = m
return m
