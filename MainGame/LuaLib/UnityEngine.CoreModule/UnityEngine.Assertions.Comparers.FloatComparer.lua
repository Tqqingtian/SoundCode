---@class UnityEngine.Assertions.Comparers.FloatComparer : System.Object
---@field public s_ComparerWithDefaultTolerance UnityEngine.Assertions.Comparers.FloatComparer @static
---@field public kEpsilon number @static
local m = {}

---@virtual
---@param a number
---@param b number
---@return boolean
function m:Equals(a, b) end

---@virtual
---@param obj number
---@return number
function m:GetHashCode(obj) end

---@static
---@param expected number
---@param actual number
---@param error number
---@return boolean
function m.AreEqual(expected, actual, error) end

---@static
---@param expected number
---@param actual number
---@param error number
---@return boolean
function m.AreEqualRelative(expected, actual, error) end

UnityEngine.Assertions.Comparers.FloatComparer = m
return m
