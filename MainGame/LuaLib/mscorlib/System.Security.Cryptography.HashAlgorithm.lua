---@class System.Security.Cryptography.HashAlgorithm : System.Object
---@field public HashSize number
---@field public Hash string
---@field public InputBlockSize number
---@field public OutputBlockSize number
---@field public CanTransformMultipleBlocks boolean
---@field public CanReuseTransform boolean
local m = {}

---@overload fun(hashName:string): @static
---@static
---@return System.Security.Cryptography.HashAlgorithm
function m.Create() end

---@overload fun(buffer:string):
---@overload fun(buffer:string, offset:number, count:number):
---@param inputStream System.IO.Stream
---@return string
function m:ComputeHash(inputStream) end

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

---@virtual
function m:Dispose() end

function m:Clear() end

---@abstract
function m:Initialize() end

System.Security.Cryptography.HashAlgorithm = m
return m
