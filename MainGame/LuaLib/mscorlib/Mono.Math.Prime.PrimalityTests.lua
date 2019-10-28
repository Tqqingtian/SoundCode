---@class Mono.Math.Prime.PrimalityTests : System.Object
local m = {}

---@static
---@param n Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return boolean
function m.Test(n, confidence) end

---@static
---@param n Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return boolean
function m.RabinMillerTest(n, confidence) end

---@static
---@param bi Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return boolean
function m.SmallPrimeSppTest(bi, confidence) end

Mono.Math.Prime.PrimalityTests = m
return m
