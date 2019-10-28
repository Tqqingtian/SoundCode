---@class System.Security.Cryptography.Aes : System.Security.Cryptography.SymmetricAlgorithm
local m = {}

---@overload fun(algorithmName:string): @static
---@static
---@return System.Security.Cryptography.Aes
function m.Create() end

System.Security.Cryptography.Aes = m
return m
