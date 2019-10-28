---@class Mono.Security.Cryptography.ARC4Managed : Mono.Security.Cryptography.RC4
---@field public Key string
---@field public CanReuseTransform boolean
---@field public CanTransformMultipleBlocks boolean
---@field public InputBlockSize number
---@field public OutputBlockSize number
local m = {}

---@virtual
---@param rgbKey string
---@param rgvIV string
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateEncryptor(rgbKey, rgvIV) end

---@virtual
---@param rgbKey string
---@param rgvIV string
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateDecryptor(rgbKey, rgvIV) end

---@virtual
function m:GenerateIV() end

---@virtual
function m:GenerateKey() end

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

Mono.Security.Cryptography.ARC4Managed = m
return m
