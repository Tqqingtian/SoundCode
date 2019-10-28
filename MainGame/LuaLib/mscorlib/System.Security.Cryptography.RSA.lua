---@class System.Security.Cryptography.RSA : System.Security.Cryptography.AsymmetricAlgorithm
---@field public KeyExchangeAlgorithm string
---@field public SignatureAlgorithm string
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.RSA
function m.Create() end

---@virtual
---@param data string
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return string
function m:Encrypt(data, padding) end

---@virtual
---@param data string
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return string
function m:Decrypt(data, padding) end

---@virtual
---@param hash string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return string
function m:SignHash(hash, hashAlgorithm, padding) end

---@virtual
---@param hash string
---@param signature string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return boolean
function m:VerifyHash(hash, signature, hashAlgorithm, padding) end

---@overload fun(data:string, offset:number, count:number, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding): @virtual
---@overload fun(data:System.IO.Stream, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding): @virtual
---@param data string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return string
function m:SignData(data, hashAlgorithm, padding) end

---@overload fun(data:string, offset:number, count:number, signature:string, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding): @virtual
---@overload fun(data:System.IO.Stream, signature:string, hashAlgorithm:System.Security.Cryptography.HashAlgorithmName, padding:System.Security.Cryptography.RSASignaturePadding):
---@param data string
---@param signature string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return boolean
function m:VerifyData(data, signature, hashAlgorithm, padding) end

---@virtual
---@param rgb string
---@return string
function m:DecryptValue(rgb) end

---@virtual
---@param rgb string
---@return string
function m:EncryptValue(rgb) end

---@virtual
---@param xmlString string
function m:FromXmlString(xmlString) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ToXmlString(includePrivateParameters) end

---@abstract
---@param includePrivateParameters boolean
---@return System.Security.Cryptography.RSAParameters
function m:ExportParameters(includePrivateParameters) end

---@abstract
---@param parameters System.Security.Cryptography.RSAParameters
function m:ImportParameters(parameters) end

System.Security.Cryptography.RSA = m
return m
