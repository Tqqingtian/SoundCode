---@class System.Security.Cryptography.MD5 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.MD5
function m.Create() end

System.Security.Cryptography.MD5 = m
return m
