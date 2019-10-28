---@class UnityEngine.Vector4 : System.ValueType
---@field public kEpsilon number @static
---@field public zero UnityEngine.Vector4 @static
---@field public one UnityEngine.Vector4 @static
---@field public positiveInfinity UnityEngine.Vector4 @static
---@field public negativeInfinity UnityEngine.Vector4 @static
---@field public x number
---@field public y number
---@field public z number
---@field public w number
---@field public Item number
---@field public normalized UnityEngine.Vector4
---@field public magnitude number
---@field public sqrMagnitude number
local m = {}

---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function m:Set(newX, newY, newZ, newW) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function m.LerpUnclamped(a, b, t) end

---@static
---@param current UnityEngine.Vector4
---@param target UnityEngine.Vector4
---@param maxDistanceDelta number
---@return UnityEngine.Vector4
function m.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(scale:UnityEngine.Vector4)
---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.Scale(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Vector4): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun()
---@static
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.Normalize(a) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function m.Dot(a, b) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.Project(a, b) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function m.Distance(a, b) end

---@static
---@param a UnityEngine.Vector4
---@return number
function m.Magnitude(a) end

---@static
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.Min(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.Max(lhs, rhs) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.op_Subtraction(a, b) end

---@static
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function m.op_UnaryNegation(a) end

---@overload fun(d:number, a:UnityEngine.Vector4): @static
---@static
---@param a UnityEngine.Vector4
---@param d number
---@return UnityEngine.Vector4
function m.op_Multiply(a, d) end

---@static
---@param a UnityEngine.Vector4
---@param d number
---@return UnityEngine.Vector4
function m.op_Division(a, d) end

---@static
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(v:UnityEngine.Vector4): @static
---@overload fun(v:UnityEngine.Vector2): @static
---@overload fun(v:UnityEngine.Vector4): @static
---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector4
function m.op_Implicit(v) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@overload fun():
---@static
---@param a UnityEngine.Vector4
---@return number
function m.SqrMagnitude(a) end

UnityEngine.Vector4 = m
return m
