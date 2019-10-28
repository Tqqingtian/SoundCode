---@class System.Security.Policy.Hash : System.Security.Policy.EvidenceBase
---@field public MD5 string
---@field public SHA1 string
---@field public SHA256 string
local m = {}

---@param hashAlg System.Security.Cryptography.HashAlgorithm
---@return string
function m:GenerateHash(hashAlg) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param md5 string
---@return System.Security.Policy.Hash
function m.CreateMD5(md5) end

---@static
---@param sha1 string
---@return System.Security.Policy.Hash
function m.CreateSHA1(sha1) end

---@static
---@param sha256 string
---@return System.Security.Policy.Hash
function m.CreateSHA256(sha256) end

System.Security.Policy.Hash = m
return m
