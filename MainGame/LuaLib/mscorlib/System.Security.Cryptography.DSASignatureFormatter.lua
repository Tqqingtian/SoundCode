---@class System.Security.Cryptography.DSASignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter
local m = {}

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
function m:SetKey(key) end

---@virtual
---@param strName string
function m:SetHashAlgorithm(strName) end

---@virtual
---@param rgbHash string
---@return string
function m:CreateSignature(rgbHash) end

System.Security.Cryptography.DSASignatureFormatter = m
return m
