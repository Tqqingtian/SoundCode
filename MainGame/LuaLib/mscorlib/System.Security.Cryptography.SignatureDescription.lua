---@class System.Security.Cryptography.SignatureDescription : System.Object
---@field public KeyAlgorithm string
---@field public DigestAlgorithm string
---@field public FormatterAlgorithm string
---@field public DeformatterAlgorithm string
local m = {}

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureDeformatter
function m:CreateDeformatter(key) end

---@virtual
---@param key System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Security.Cryptography.AsymmetricSignatureFormatter
function m:CreateFormatter(key) end

---@virtual
---@return System.Security.Cryptography.HashAlgorithm
function m:CreateDigest() end

System.Security.Cryptography.SignatureDescription = m
return m
