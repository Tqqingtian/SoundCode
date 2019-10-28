---@class System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter
---@field public Parameters string
---@field public Rng System.Security.Cryptography.RandomNumberGenerator
local m = {}

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@overload fun(rgbData:string, symAlgType:System.Type): @virtual
---@virtual
---@param rgbData string
---@return string
function m:CreateKeyExchange(rgbData) end

System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter = m
return m
