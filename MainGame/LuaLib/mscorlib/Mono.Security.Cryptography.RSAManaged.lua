---@class Mono.Security.Cryptography.RSAManaged : System.Security.Cryptography.RSA
---@field public KeySize number
---@field public KeyExchangeAlgorithm string
---@field public PublicOnly boolean
---@field public SignatureAlgorithm string
---@field public UseKeyBlinding boolean
---@field public IsCrtPossible boolean
local m = {}

---@virtual
---@param rgb string
---@return string
function m:DecryptValue(rgb) end

---@virtual
---@param rgb string
---@return string
function m:EncryptValue(rgb) end

---@virtual
---@param includePrivateParameters boolean
---@return System.Security.Cryptography.RSAParameters
function m:ExportParameters(includePrivateParameters) end

---@virtual
---@param parameters System.Security.Cryptography.RSAParameters
function m:ImportParameters(parameters) end

---@param value fun(sender:any, e:System.EventArgs)
function m:add_KeyGenerated(value) end

---@param value fun(sender:any, e:System.EventArgs)
function m:remove_KeyGenerated(value) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ToXmlString(includePrivateParameters) end

Mono.Security.Cryptography.RSAManaged = m
return m
