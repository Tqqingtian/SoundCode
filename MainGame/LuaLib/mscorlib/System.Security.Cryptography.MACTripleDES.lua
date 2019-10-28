---@class System.Security.Cryptography.MACTripleDES : System.Security.Cryptography.KeyedHashAlgorithm
---@field public Padding System.Security.Cryptography.PaddingMode
local m = {}

---@virtual
function m:Initialize() end

System.Security.Cryptography.MACTripleDES = m
return m
