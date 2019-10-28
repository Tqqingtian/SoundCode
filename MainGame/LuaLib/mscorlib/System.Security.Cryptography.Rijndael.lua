---@class System.Security.Cryptography.Rijndael : System.Security.Cryptography.SymmetricAlgorithm
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.Rijndael
function m.Create() end

System.Security.Cryptography.Rijndael = m
return m
