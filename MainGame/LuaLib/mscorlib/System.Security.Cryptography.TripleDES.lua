---@class System.Security.Cryptography.TripleDES : System.Security.Cryptography.SymmetricAlgorithm
---@field public Key string
local m = {}

---@overload fun(str:string): @static
---@static
---@return System.Security.Cryptography.TripleDES
function m.Create() end

---@static
---@param rgbKey string
---@return boolean
function m.IsWeakKey(rgbKey) end

System.Security.Cryptography.TripleDES = m
return m
