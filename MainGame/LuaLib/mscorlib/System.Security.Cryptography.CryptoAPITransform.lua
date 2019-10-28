---@class System.Security.Cryptography.CryptoAPITransform : System.Object
---@field public CanReuseTransform boolean
---@field public CanTransformMultipleBlocks boolean
---@field public InputBlockSize number
---@field public KeyHandle System.IntPtr
---@field public OutputBlockSize number
local m = {}

---@virtual
function m:Dispose() end

function m:Clear() end

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

function m:Reset() end

System.Security.Cryptography.CryptoAPITransform = m
return m
