---@class Mono.Security.Cryptography.HMACAlgorithm : System.Object
---@field public Algo System.Security.Cryptography.HashAlgorithm
---@field public HashName string
---@field public Key string
local m = {}

function m:Dispose() end

function m:Initialize() end

---@param rgb string
---@param ib number
---@param cb number
function m:Core(rgb, ib, cb) end

---@return string
function m:Final() end

Mono.Security.Cryptography.HMACAlgorithm = m
return m
