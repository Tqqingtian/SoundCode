---@class Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase : Mono.Math.Prime.Generator.PrimeGeneratorBase
local m = {}

---@overload fun(bits:number, context:any): @virtual
---@virtual
---@param bits number
---@return Mono.Math.BigInteger
function m:GenerateNewPrime(bits) end

Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase = m
return m
