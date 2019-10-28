---@class System.Security.Cryptography.RC2 : System.Security.Cryptography.SymmetricAlgorithm
---@field public EffectiveKeySize number
---@field public KeySize number
local m = {}

---@overload fun(AlgName:string): @static
---@static
---@return System.Security.Cryptography.RC2
function m.Create() end

System.Security.Cryptography.RC2 = m
return m
