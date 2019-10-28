---@class System.Security.Cryptography.ICryptoTransform : table
---@field public InputBlockSize number
---@field public OutputBlockSize number
---@field public CanTransformMultipleBlocks boolean
---@field public CanReuseTransform boolean
local m = {}

---@abstract
---@param inputBuffer string
---@param inputOffset number
---@param inputCount number
---@param outputBuffer string
---@param outputOffset number
---@return number
function m:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end

---@abstract
---@param inputBuffer string
---@param inputOffset number
---@param inputCount number
---@return string
function m:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end

System.Security.Cryptography.ICryptoTransform = m
return m
