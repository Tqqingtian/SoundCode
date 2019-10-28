---@class System.Security.Cryptography.AsymmetricSignatureFormatter : System.Object
local m = {}

---@abstract
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@abstract
---@param strName string
function m:SetHashAlgorithm(strName) end

---@overload fun(rgbHash:string): @abstract
---@virtual
---@param hash System.Security.Cryptography.HashAlgorithm
---@return string
function m:CreateSignature(hash) end

System.Security.Cryptography.AsymmetricSignatureFormatter = m
return m
