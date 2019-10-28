---@class System.Security.Cryptography.TripleDESCryptoServiceProvider : System.Security.Cryptography.TripleDES
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

System.Security.Cryptography.TripleDESCryptoServiceProvider = m
return m
