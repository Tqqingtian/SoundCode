---@class System.Security.Cryptography.RIPEMD160 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.RIPEMD160
function m.Create() end

System.Security.Cryptography.RIPEMD160 = m
return m
