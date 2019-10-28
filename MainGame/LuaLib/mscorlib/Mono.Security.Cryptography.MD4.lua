---@class Mono.Security.Cryptography.MD4 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return Mono.Security.Cryptography.MD4
function m.Create() end

Mono.Security.Cryptography.MD4 = m
return m
