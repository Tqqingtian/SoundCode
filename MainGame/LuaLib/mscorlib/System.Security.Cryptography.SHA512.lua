---@class System.Security.Cryptography.SHA512 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.SHA512
function m.Create() end

System.Security.Cryptography.SHA512 = m
return m
