---@class System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
---@field public RNG System.Security.Cryptography.RandomNumberGenerator
---@field public Parameters string
local m = {}

---@virtual
---@param rgbIn string
---@return string
function m:DecryptKeyExchange(rgbIn) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter = m
return m
