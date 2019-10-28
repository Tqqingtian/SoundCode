---@class System.Security.Cryptography.KeyedHashAlgorithm : System.Security.Cryptography.HashAlgorithm
---@field public Key string
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.KeyedHashAlgorithm
function m.Create() end

System.Security.Cryptography.KeyedHashAlgorithm = m
return m
