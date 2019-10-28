---@class System.Security.Cryptography.HMAC : System.Security.Cryptography.KeyedHashAlgorithm
---@field public Key string
---@field public HashName string
local m = {}

---@overload fun(algorithmName:string): @static
---@static
---@return System.Security.Cryptography.HMAC
function m.Create() end

---@virtual
function m:Initialize() end

System.Security.Cryptography.HMAC = m
return m
