---@class System.Security.Cryptography.PKCS1MaskGenerationMethod : System.Security.Cryptography.MaskGenerationMethod
---@field public HashName string
local m = {}

---@virtual
---@param rgbSeed string
---@param cbReturn number
---@return string
function m:GenerateMask(rgbSeed, cbReturn) end

System.Security.Cryptography.PKCS1MaskGenerationMethod = m
return m
