---@class Mono.Security.StrongName : System.Object
---@field public CanSign boolean
---@field public RSA System.Security.Cryptography.RSA
---@field public PublicKey string
---@field public PublicKeyToken string
---@field public TokenAlgorithm string
local m = {}

---@return string
function m:GetBytes() end

---@param fileName string
---@return string
function m:Hash(fileName) end

---@param fileName string
---@return boolean
function m:Sign(fileName) end

---@overload fun(stream:System.IO.Stream):
---@param fileName string
---@return boolean
function m:Verify(fileName) end

---@static
---@param assemblyName string
---@return boolean
function m.IsAssemblyStrongnamed(assemblyName) end

---@static
---@param publicKey string
---@param algorithm number
---@param hash string
---@param signature string
---@return boolean
function m.VerifySignature(publicKey, algorithm, hash, signature) end

Mono.Security.StrongName = m
return m
