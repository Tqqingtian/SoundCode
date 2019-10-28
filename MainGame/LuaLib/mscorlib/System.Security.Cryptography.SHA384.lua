---@class System.Security.Cryptography.SHA384 : System.Security.Cryptography.HashAlgorithm
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.SHA384
function m.Create() end

System.Security.Cryptography.SHA384 = m
return m
