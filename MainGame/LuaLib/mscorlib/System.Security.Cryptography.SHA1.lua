---@class System.Security.Cryptography.SHA1 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.SHA1
function m.Create() end

System.Security.Cryptography.SHA1 = m
return m
