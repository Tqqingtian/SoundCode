---@class System.Security.Cryptography.DESTransform : Mono.Security.Cryptography.SymmetricTransform
local m = {}

---@param input string
---@param output string
function m:ProcessBlock(input, output) end

System.Security.Cryptography.DESTransform = m
return m
