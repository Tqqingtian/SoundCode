---@class System.Security.Cryptography.RijndaelManaged : System.Security.Cryptography.Rijndael
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

System.Security.Cryptography.RijndaelManaged = m
return m
