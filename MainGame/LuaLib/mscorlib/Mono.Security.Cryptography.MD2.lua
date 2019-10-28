---@class Mono.Security.Cryptography.MD2 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return Mono.Security.Cryptography.MD2
function m.Create() end

Mono.Security.Cryptography.MD2 = m
return m
