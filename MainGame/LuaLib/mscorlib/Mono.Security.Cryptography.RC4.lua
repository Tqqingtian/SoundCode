---@class Mono.Security.Cryptography.RC4 : System.Security.Cryptography.SymmetricAlgorithm
---@field public IV string
local m = {}

---@overload fun(algName:string): @static
---@static
---@return Mono.Security.Cryptography.RC4
function m.Create() end

Mono.Security.Cryptography.RC4 = m
return m
