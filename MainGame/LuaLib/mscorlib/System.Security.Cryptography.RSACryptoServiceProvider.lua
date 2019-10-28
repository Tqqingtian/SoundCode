---@class System.Security.Cryptography.RSACryptoServiceProvider : System.Security.Cryptography.RSA
---@field public UseMachineKeyStore boolean @static
---@field public SignatureAlgorithm string
---@field public KeyExchangeAlgorithm string
---@field public KeySize number
---@field public PersistKeyInCsp boolean
---@field public PublicOnly boolean
---@field public CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo
local m = {}

---@overload fun(rgb:string, fOAEP:boolean):
---@virtual
---@param data string
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return string
function m:Encrypt(data, padding) end

---@overload fun(rgb:string, fOAEP:boolean):
---@virtual
---@param data string
---@param padding System.Security.Cryptography.RSAEncryptionPadding
---@return string
function m:Decrypt(data, padding) end

---@overload fun(rgbHash:string, str:string):
---@virtual
---@param hash string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return string
function m:SignHash(hash, hashAlgorithm, padding) end

---@overload fun(rgbHash:string, str:string, rgbSignature:string):
---@virtual
---@param hash string
---@param signature string
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param padding System.Security.Cryptography.RSASignaturePadding
---@return boolean
function m:VerifyHash(hash, signature, hashAlgorithm, padding) end

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

---@overload fun(inputStream:System.IO.Stream, halg:any):
---@overload fun(buffer:string, offset:number, count:number, halg:any):
---@param buffer string
---@param halg any
---@return string
function m:SignData(buffer, halg) end

---@param buffer string
---@param halg any
---@param signature string
---@return boolean
function m:VerifyData(buffer, halg, signature) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ExportCspBlob(includePrivateParameters) end

---@virtual
---@param keyBlob string
function m:ImportCspBlob(keyBlob) end

System.Security.Cryptography.RSACryptoServiceProvider = m
return m
