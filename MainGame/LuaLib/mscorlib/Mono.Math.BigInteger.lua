---@class Mono.Math.BigInteger : System.Object
local m = {}

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@static
---@param value number
---@return Mono.Math.BigInteger
function m.op_Implicit(value) end

---@static
---@param number string
---@return Mono.Math.BigInteger
function m.Parse(number) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.op_Addition(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.op_Subtraction(bi1, bi2) end

---@overload fun(bi:Mono.Math.BigInteger, ui:number): @static
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi Mono.Math.BigInteger
---@param i number
---@return number
function m.op_Modulus(bi, i) end

---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi Mono.Math.BigInteger
---@param i number
---@return Mono.Math.BigInteger
function m.op_Division(bi, i) end

---@overload fun(bi:Mono.Math.BigInteger, i:number): @static
---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.op_Multiply(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param shiftVal number
---@return Mono.Math.BigInteger
function m.op_LeftShift(bi1, shiftVal) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param shiftVal number
---@return Mono.Math.BigInteger
function m.op_RightShift(bi1, shiftVal) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.Add(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.Subtract(bi1, bi2) end

---@overload fun(bi:Mono.Math.BigInteger, ui:number): @static
---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi Mono.Math.BigInteger
---@param i number
---@return number
function m.Modulus(bi, i) end

---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi Mono.Math.BigInteger
---@param i number
---@return Mono.Math.BigInteger
function m.Divid(bi, i) end

---@overload fun(bi:Mono.Math.BigInteger, i:number): @static
---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.Multiply(bi1, bi2) end

---@overload fun(bits:number): @static
---@static
---@param bits number
---@param rng System.Security.Cryptography.RandomNumberGenerator
---@return Mono.Math.BigInteger
function m.GenerateRandom(bits, rng) end

---@overload fun()
---@param rng System.Security.Cryptography.RandomNumberGenerator
function m:Randomize(rng) end

---@return number
function m:BitCount() end

---@overload fun(bitNum:number):
---@param bitNum number
---@return boolean
function m:TestBit(bitNum) end

---@overload fun(bitNum:number, value:boolean)
---@param bitNum number
function m:SetBit(bitNum) end

---@param bitNum number
function m:ClearBit(bitNum) end

---@return number
function m:LowestSetBit() end

---@return string
function m:GetBytes() end

---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi1 Mono.Math.BigInteger
---@param ui number
---@return boolean
function m.op_Equality(bi1, ui) end

---@overload fun(bi1:Mono.Math.BigInteger, bi2:Mono.Math.BigInteger): @static
---@static
---@param bi1 Mono.Math.BigInteger
---@param ui number
---@return boolean
function m.op_Inequality(bi1, ui) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return boolean
function m.op_GreaterThan(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return boolean
function m.op_LessThan(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return boolean
function m.op_GreaterThanOrEqual(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return boolean
function m.op_LessThanOrEqual(bi1, bi2) end

---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger.Sign
function m:Compare(bi) end

---@overload fun(radix:number, characterSet:string):
---@overload fun(): @virtual
---@param radix number
---@return string
function m:ToString(radix) end

function m:Clear() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:GCD(bi) end

---@param modulus Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:ModInverse(modulus) end

---@param exp Mono.Math.BigInteger
---@param n Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m:ModPow(exp, n) end

---@return boolean
function m:IsProbablePrime() end

---@static
---@param bi Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.NextHighestPrime(bi) end

---@static
---@param bits number
---@return Mono.Math.BigInteger
function m.GeneratePseudoPrime(bits) end

function m:Incr2() end

Mono.Math.BigInteger = m
return m
