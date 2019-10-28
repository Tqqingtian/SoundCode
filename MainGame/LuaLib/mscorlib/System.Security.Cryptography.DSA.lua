---@class System.Security.Cryptography.DSA : System.Security.Cryptography.AsymmetricAlgorithm
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.DSA
function m.Create() end

---@abstract
---@param rgbHash string
---@return string
function m:CreateSignature(rgbHash) end

---@abstract
---@param rgbHash string
---@param rgbSignature string
---@return boolean
function m:VerifySignature(rgbHash, rgbSignature) end

---@overload fun(data:string, offset:number, count:number, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName): @virtual
---@overload fun(data:System.IO.Stream, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName): @virtual
---@param data string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return string
function m:SignData(data, hashAlgorithm) end

---@overload fun(data:string, offset:number, count:number, signature:string, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName): @virtual
---@overload fun(data:System.IO.Stream, signature:string, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName): @virtual
---@param data string
---@param signature string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return boolean
function m:VerifyData(data, signature, hashAlgorithm) end

---@virtual
---@param xmlString string
function m:FromXmlString(xmlString) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ToXmlString(includePrivateParameters) end

---@abstract
---@param includePrivateParameters boolean
---@return System.Security.Cryptography.DSAParameters
function m:ExportParameters(includePrivateParameters) end

---@abstract
---@param parameters System.Security.Cryptography.DSAParameters
function m:ImportParameters(parameters) end

System.Security.Cryptography.DSA = m
return m
