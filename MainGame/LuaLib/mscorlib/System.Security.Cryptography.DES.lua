---@class System.Security.Cryptography.DES : System.Security.Cryptography.SymmetricAlgorithm
---@field public Key string
local m = {}

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.DES
function m.Create() end

---@static
---@param rgbKey string
---@return boolean
function m.IsWeakKey(rgbKey) end

---@static
---@param rgbKey string
---@return boolean
function m.IsSemiWeakKey(rgbKey) end

System.Security.Cryptography.DES = m
return m
