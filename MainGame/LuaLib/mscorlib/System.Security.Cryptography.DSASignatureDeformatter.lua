---@class System.Security.Cryptography.DSASignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter
local m = {}

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@virtual
---@param strName string
function m:SetHashAlgorithm(strName) end

---@virtual
---@param rgbHash string
---@param rgbSignature string
---@return boolean
function m:VerifySignature(rgbHash, rgbSignature) end

System.Security.Cryptography.DSASignatureDeformatter = m
return m
