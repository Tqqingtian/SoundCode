---@class Mono.Security.Cryptography.MACAlgorithm : System.Object
local m = {}

---@param key string
function m:Initialize(key) end

---@param rgb string
---@param ib number
---@param cb number
function m:Core(rgb, ib, cb) end

---@return string
function m:Final() end

Mono.Security.Cryptography.MACAlgorithm = m
return m
