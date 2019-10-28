---@class Mono.Security.Cryptography.CryptoConvert : System.Object
local m = {}

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.RSA
function m.FromCapiPrivateKeyBlob(blob) end

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.DSA
function m.FromCapiPrivateKeyBlobDSA(blob) end

---@overload fun(dsa:System.Security.Cryptography.DSA): @static
---@static
---@param rsa System.Security.Cryptography.RSA
---@return string
function m.ToCapiPrivateKeyBlob(rsa) end

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.RSA
function m.FromCapiPublicKeyBlob(blob) end

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.DSA
function m.FromCapiPublicKeyBlobDSA(blob) end

---@overload fun(dsa:System.Security.Cryptography.DSA): @static
---@static
---@param rsa System.Security.Cryptography.RSA
---@return string
function m.ToCapiPublicKeyBlob(rsa) end

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.RSA
function m.FromCapiKeyBlob(blob) end

---@overload fun(blob:string, offset:number): @static
---@static
---@param blob string
---@return System.Security.Cryptography.DSA
function m.FromCapiKeyBlobDSA(blob) end

---@overload fun(rsa:System.Security.Cryptography.RSA, includePrivateKey:boolean): @static
---@overload fun(dsa:System.Security.Cryptography.DSA, includePrivateKey:boolean): @static
---@static
---@param keypair System.Security.Cryptography.AsymmetricAlgorithm
---@param includePrivateKey boolean
---@return string
function m.ToCapiKeyBlob(keypair, includePrivateKey) end

---@static
---@param input string
---@return string
function m.ToHex(input) end

---@static
---@param hex string
---@return string
function m.FromHex(hex) end

Mono.Security.Cryptography.CryptoConvert = m
return m
