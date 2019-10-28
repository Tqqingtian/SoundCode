---@class System.Security.Cryptography.MaskGenerationMethod : System.Object
local m = {}

---@abstract
---@param rgbSeed string
---@param cbReturn number
---@return string
function m:GenerateMask(rgbSeed, cbReturn) end

System.Security.Cryptography.MaskGenerationMethod = m
return m
