---@class System.Security.Cryptography.RijndaelManagedTransform : System.Object
---@field public BlockSizeValue number
---@field public InputBlockSize number
---@field public OutputBlockSize number
---@field public CanTransformMultipleBlocks boolean
---@field public CanReuseTransform boolean
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

System.Security.Cryptography.RijndaelManagedTransform = m
return m
