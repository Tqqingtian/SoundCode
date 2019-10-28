---@class System.Security.Cryptography.Rfc2898DeriveBytes : System.Security.Cryptography.DeriveBytes
---@field public IterationCount number
---@field public Salt string
local m = {}

---@virtual
---@param cb number
---@return string
function m:GetBytes(cb) end

---@virtual
function m:Reset() end

---@param algname string
---@param alghashname string
---@param keySize number
---@param rgbIV string
---@return string
function m:CryptDeriveKey(algname, alghashname, keySize, rgbIV) end

System.Security.Cryptography.Rfc2898DeriveBytes = m
return m
