---@class System.Security.Cryptography.AsymmetricKeyExchangeFormatter : System.Object
---@field public Parameters string
local m = {}

---@abstract
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@overload fun(data:string, symAlgType:System.Type): @abstract
---@abstract
---@param data string
---@return string
function m:CreateKeyExchange(data) end

System.Security.Cryptography.AsymmetricKeyExchangeFormatter = m
return m
