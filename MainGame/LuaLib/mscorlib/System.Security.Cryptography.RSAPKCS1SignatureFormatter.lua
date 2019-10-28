---@class System.Security.Cryptography.RSAPKCS1SignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter
local m = {}

---@virtual
---@param rgbHash string
---@return string
function m:CreateSignature(rgbHash) end

---@virtual
---@param strName string
function m:SetHashAlgorithm(strName) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

System.Security.Cryptography.RSAPKCS1SignatureFormatter = m
return m
