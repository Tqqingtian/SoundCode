---@class Mono.Math.BigInteger.ModulusRing : System.Object
local m = {}

---@param x Mono.Math.BigInteger
function m:BarrettReduction(x) end

---@param a Mono.Math.BigInteger
---@param b Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:Multiply(a, b) end

---@param a Mono.Math.BigInteger
---@param b Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:Difference(a, b) end

---@overload fun(b:number, exp:Mono.Math.BigInteger):
---@param a Mono.Math.BigInteger
---@param k Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:Pow(a, k) end

Mono.Math.BigInteger.ModulusRing = m
return m
