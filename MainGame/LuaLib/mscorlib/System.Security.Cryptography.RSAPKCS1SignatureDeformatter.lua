---@class System.Security.Cryptography.RSAPKCS1SignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter
local m = {}

---@virtual
---@param strName string
function m:SetHashAlgorithm(strName) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@virtual
---@param rgbHash string
---@param rgbSignature string
---@return boolean
function m:VerifySignature(rgbHash, rgbSignature) end

System.Security.Cryptography.RSAPKCS1SignatureDeformatter = m
return m
