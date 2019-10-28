---@class System.Security.Cryptography.RSAEncryptionPadding : System.Object
---@field public Pkcs1 System.Security.Cryptography.RSAEncryptionPadding @static
---@field public OaepSHA1 System.Security.Cryptography.RSAEncryptionPadding @static
---@field public OaepSHA256 System.Security.Cryptography.RSAEncryptionPadding @static
---@field public OaepSHA384 System.Security.Cryptography.RSAEncryptionPadding @static
---@field public OaepSHA512 System.Security.Cryptography.RSAEncryptionPadding @static
---@field public Mode System.Security.Cryptography.RSAEncryptionPaddingMode
---@field public OaepHashAlgorithm System.Security.Cryptography.HashAlgorithmName
local m = {}

---@static
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Security.Cryptography.RSAEncryptionPadding
function m.CreateOaep(hashAlgorithm) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:System.Security.Cryptography.RSAEncryptionPadding): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param left System.Security.Cryptography.RSAEncryptionPadding
---@param right System.Security.Cryptography.RSAEncryptionPadding
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Cryptography.RSAEncryptionPadding
---@param right System.Security.Cryptography.RSAEncryptionPadding
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@return string
function m:ToString() end

System.Security.Cryptography.RSAEncryptionPadding = m
return m
