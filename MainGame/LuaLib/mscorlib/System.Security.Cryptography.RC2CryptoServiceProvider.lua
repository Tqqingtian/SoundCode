---@class System.Security.Cryptography.RC2CryptoServiceProvider : System.Security.Cryptography.RC2
---@field public EffectiveKeySize number
---@field public UseSalt boolean
local m = {}

---@virtual
---@param rgbKey string
---@param rgbIV string
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateEncryptor(rgbKey, rgbIV) end

---@virtual
---@param rgbKey string
---@param rgbIV string
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateDecryptor(rgbKey, rgbIV) end

---@virtual
function m:GenerateKey() end

---@virtual
function m:GenerateIV() end

System.Security.Cryptography.RC2CryptoServiceProvider = m
return m
