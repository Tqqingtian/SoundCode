---@class System.Security.Cryptography.RNGCryptoServiceProvider : System.Security.Cryptography.RandomNumberGenerator
local m = {}

---@virtual
---@param data string
function m:GetBytes(data) end

---@virtual
---@param data string
function m:GetNonZeroBytes(data) end

System.Security.Cryptography.RNGCryptoServiceProvider = m
return m
