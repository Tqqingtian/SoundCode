---@class System.Security.Cryptography.SHA256 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.SHA256
function m.Create() end

System.Security.Cryptography.SHA256 = m
return m
