---@class System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
---@field public Parameters string
local m = {}

---@virtual
---@param rgbData string
---@return string
function m:DecryptKeyExchange(rgbData) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter = m
return m
