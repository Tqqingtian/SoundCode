---@class Mono.Security.Cryptography.DSAManaged : System.Security.Cryptography.DSA
---@field public KeySize number
---@field public KeyExchangeAlgorithm string
---@field public PublicOnly boolean
---@field public SignatureAlgorithm string
local m = {}

---@virtual
---@param includePrivateParameters boolean
---@return System.Security.Cryptography.DSAParameters
function m:ExportParameters(includePrivateParameters) end

---@virtual
---@param parameters System.Security.Cryptography.DSAParameters
function m:ImportParameters(parameters) end

---@virtual
---@param rgbHash string
---@return string
function m:CreateSignature(rgbHash) end

---@virtual
---@param rgbHash string
---@param rgbSignature string
---@return boolean
function m:VerifySignature(rgbHash, rgbSignature) end

---@param value fun(sender:any, e:System.EventArgs)
function m:add_KeyGenerated(value) end

---@param value fun(sender:any, e:System.EventArgs)
function m:remove_KeyGenerated(value) end

Mono.Security.Cryptography.DSAManaged = m
return m
