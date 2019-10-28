---@class System.Security.Cryptography.DSACryptoServiceProvider : System.Security.Cryptography.DSA
---@field public UseMachineKeyStore boolean @static
---@field public KeyExchangeAlgorithm string
---@field public KeySize number
---@field public PersistKeyInCsp boolean
---@field public PublicOnly boolean
---@field public SignatureAlgorithm string
---@field public CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo
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

---@overload fun(buffer:string, offset:number, count:number):
---@overload fun(inputStream:System.IO.Stream):
---@param buffer string
---@return string
function m:SignData(buffer) end

---@param rgbHash string
---@param str string
---@return string
function m:SignHash(rgbHash, str) end

---@param rgbData string
---@param rgbSignature string
---@return boolean
function m:VerifyData(rgbData, rgbSignature) end

---@param rgbHash string
---@param str string
---@param rgbSignature string
---@return boolean
function m:VerifyHash(rgbHash, str, rgbSignature) end

---@virtual
---@param rgbHash string
---@param rgbSignature string
---@return boolean
function m:VerifySignature(rgbHash, rgbSignature) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ExportCspBlob(includePrivateParameters) end

---@virtual
---@param keyBlob string
function m:ImportCspBlob(keyBlob) end

System.Security.Cryptography.DSACryptoServiceProvider = m
return m
