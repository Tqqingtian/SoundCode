---@class Mono.Security.Cryptography.PKCS8.PrivateKeyInfo : System.Object
---@field public Algorithm string
---@field public Attributes System.Collections.ArrayList
---@field public PrivateKey string
---@field public Version number
local m = {}

---@return string
function m:GetBytes() end

---@static
---@param keypair string
---@return System.Security.Cryptography.RSA
function m.DecodeRSA(keypair) end

---@overload fun(dsa:System.Security.Cryptography.DSA): @static
---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm): @static
---@static
---@param rsa System.Security.Cryptography.RSA
---@return string
function m.Encode(rsa) end

---@static
---@param privateKey string
---@param dsaParameters System.Security.Cryptography.DSAParameters
---@return System.Security.Cryptography.DSA
function m.DecodeDSA(privateKey, dsaParameters) end

Mono.Security.Cryptography.PKCS8.PrivateKeyInfo = m
return m
