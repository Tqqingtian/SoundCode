---@class Mono.Math.Prime.Generator.PrimeGeneratorBase : System.Object
---@field public Confidence Mono.Math.Prime.ConfidenceFactor
---@field public PrimalityTest fun(bi:Mono.Math.BigInteger, confidence:Mono.Math.Prime.ConfidenceFactor):
---@field public TrialDivisionBounds number
local m = {}

---@abstract
---@param bits number
---@return Mono.Math.BigInteger
function m:GenerateNewPrime(bits) end

Mono.Math.Prime.Generator.PrimeGeneratorBase = m
return m
