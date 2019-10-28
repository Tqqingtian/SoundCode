---@class System.Security.Cryptography.AsymmetricSignatureDeformatter : System.Object
local m = {}

---@abstract
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@abstract
---@param strName string
function m:SetHashAlgorithm(strName) end

---@overload fun(rgbHash:string, rgbSignature:string): @abstract
---@virtual
---@param hash System.Security.Cryptography.HashAlgorithm
---@param rgbSignature string
---@return boolean
function m:VerifySignature(hash, rgbSignature) end

System.Security.Cryptography.AsymmetricSignatureDeformatter = m
return m
