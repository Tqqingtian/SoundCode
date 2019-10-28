---@class System.Collections.HashHelpers : System.Object
---@field public HashCollisionThreshold number @static
---@field public primes number[] @static
---@field public MaxPrimeArrayLength number @static
local m = {}

---@static
---@param candidate number
---@return boolean
function m.IsPrime(candidate) end

---@static
---@param min number
---@return number
function m.GetPrime(min) end

---@static
---@return number
function m.GetMinPrime() end

---@static
---@param oldSize number
---@return number
function m.ExpandPrime(oldSize) end

System.Collections.HashHelpers = m
return m
