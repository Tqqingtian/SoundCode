---@class System.Security.Cryptography.AsymmetricKeyExchangeDeformatter : System.Object
---@field public Parameters string
local m = {}

---@abstract
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@abstract
---@param rgb string
---@return string
function m:DecryptKeyExchange(rgb) end

System.Security.Cryptography.AsymmetricKeyExchangeDeformatter = m
return m
