---@class Mono.Security.Cryptography.PKCS1 : System.Object
local m = {}

---@overload fun(x:string, size:number): @static
---@static
---@param x number
---@param size number
---@return string
function m.I2OSP(x, size) end

---@static
---@param x string
---@return string
function m.OS2IP(x) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param m string
---@return string
function m.RSAEP(rsa, m) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param c string
---@return string
function m.RSADP(rsa, c) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param m string
---@return string
function m.RSASP1(rsa, m) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param s string
---@return string
function m.RSAVP1(rsa, s) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param rng System.Security.Cryptography.RandomNumberGenerator
---@param M string
---@return string
function m.Encrypt_OAEP(rsa, hash, rng, M) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param C string
---@return string
function m.Decrypt_OAEP(rsa, hash, C) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param rng System.Security.Cryptography.RandomNumberGenerator
---@param M string
---@return string
function m.Encrypt_v15(rsa, rng, M) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param C string
---@return string
function m.Decrypt_v15(rsa, C) end

---@static
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue string
---@return string
function m.Sign_v15(rsa, hash, hashValue) end

---@overload fun(rsa:System.Security.Cryptography.RSA, hash:System.Security.Cryptography.HashAlgorithm, hashValue:string, signature:string, tryNonStandardEncoding:boolean): @static
---@static
---@param rsa System.Security.Cryptography.RSA
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue string
---@param signature string
---@return boolean
function m.Verify_v15(rsa, hash, hashValue, signature) end

---@static
---@param hash System.Security.Cryptography.HashAlgorithm
---@param hashValue string
---@param emLength number
---@return string
function m.Encode_v15(hash, hashValue, emLength) end

---@static
---@param hash System.Security.Cryptography.HashAlgorithm
---@param mgfSeed string
---@param maskLen number
---@return string
function m.MGF1(hash, mgfSeed, maskLen) end

Mono.Security.Cryptography.PKCS1 = m
return m
