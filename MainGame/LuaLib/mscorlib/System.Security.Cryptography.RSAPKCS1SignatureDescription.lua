---@class System.Security.Cryptography.RSAPKCS1SignatureDescription : System.Security.Cryptography.SignatureDescription
local m = {}

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureDeformatter
function m:CreateDeformatter(key) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureFormatter
function m:CreateFormatter(key) end

System.Security.Cryptography.RSAPKCS1SignatureDescription = m
return m
