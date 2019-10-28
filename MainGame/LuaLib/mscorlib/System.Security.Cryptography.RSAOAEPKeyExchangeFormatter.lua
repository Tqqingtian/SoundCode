---@class System.Security.Cryptography.RSAOAEPKeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter
---@field public Parameter string
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

System.Security.Cryptography.RSAOAEPKeyExchangeFormatter = m
return m
