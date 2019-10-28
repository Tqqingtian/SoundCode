---@class System.Security.Cryptography.DESCryptoServiceProvider : System.Security.Cryptography.DES
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

System.Security.Cryptography.DESCryptoServiceProvider = m
return m
