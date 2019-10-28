---@class Mono.Security.Cryptography.SymmetricTransform : System.Object
---@field public CanTransformMultipleBlocks boolean
---@field public CanReuseTransform boolean
---@field public InputBlockSize number
---@field public OutputBlockSize number
local m = {}

---@virtual
---@param inputBuffer string
---@param inputOffset number
---@param inputCount number
---@param outputBuffer string
---@param outputOffset number
---@return number
function m:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end

---@virtual
---@param inputBuffer string
---@param inputOffset number
---@param inputCount number
---@return string
function m:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end

Mono.Security.Cryptography.SymmetricTransform = m
return m
