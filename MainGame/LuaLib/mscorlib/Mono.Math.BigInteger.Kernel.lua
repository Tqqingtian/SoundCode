---@class Mono.Math.BigInteger.Kernel : System.Object
local m = {}

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.AddSameSign(bi1, bi2) end

---@static
---@param big Mono.Math.BigInteger
---@param small Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.Subtract(big, small) end

---@static
---@param big Mono.Math.BigInteger
---@param small Mono.Math.BigInteger
function m.MinusEq(big, small) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
function m.PlusEq(bi1, bi2) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger.Sign
function m.Compare(bi1, bi2) end

---@static
---@param n Mono.Math.BigInteger
---@param d number
---@return number
function m.SingleByteDivideInPlace(n, d) end

---@static
---@param n Mono.Math.BigInteger
---@param d number
---@return number
function m.DwordMod(n, d) end

---@static
---@param n Mono.Math.BigInteger
---@param d number
---@return Mono.Math.BigInteger
function m.DwordDiv(n, d) end

---@static
---@param n Mono.Math.BigInteger
---@param d number
---@return Mono.Math.BigInteger[]
function m.DwordDivMod(n, d) end

---@static
---@param bi1 Mono.Math.BigInteger
---@param bi2 Mono.Math.BigInteger
---@return Mono.Math.BigInteger[]
function m.multiByteDivide(bi1, bi2) end

---@static
---@param bi Mono.Math.BigInteger
---@param n number
---@return Mono.Math.BigInteger
function m.LeftShift(bi, n) end

---@static
---@param bi Mono.Math.BigInteger
---@param n number
---@return Mono.Math.BigInteger
function m.RightShift(bi, n) end

---@static
---@param n Mono.Math.BigInteger
---@param f number
---@return Mono.Math.BigInteger
function m.MultiplyByDword(n, f) end

---@static
---@param x number[]
---@param xOffset number
---@param xLen number
---@param y number[]
---@param yOffset number
---@param yLen number
---@param d number[]
---@param dOffset number
function m.Multiply(x, xOffset, xLen, y, yOffset, yLen, d, dOffset) end

---@static
---@param x number[]
---@param xOffset number
---@param xLen number
---@param y number[]
---@param yOffest number
---@param yLen number
---@param d number[]
---@param dOffset number
---@param mod number
function m.MultiplyMod2p32pmod(x, xOffset, xLen, y, yOffest, yLen, d, dOffset, mod) end

---@static
---@param bi Mono.Math.BigInteger
---@param wkSpace System.UInt32__
---@return System.UInt32__
function m.SquarePositive(bi, wkSpace) end

---@static
---@param a Mono.Math.BigInteger
---@param b Mono.Math.BigInteger
---@return Mono.Math.BigInteger
function m.gcd(a, b) end

---@overload fun(bi:Mono.Math.BigInteger, modulus:Mono.Math.BigInteger): @static
---@static
---@param bi Mono.Math.BigInteger
---@param modulus number
---@return number
function m.modInverse(bi, modulus) end

Mono.Math.BigInteger.Kernel = m
return m
