---@class UnityEngine.Vector2 : System.ValueType
---@field public kEpsilon number @static
---@field public kEpsilonNormalSqrt number @static
---@field public zero UnityEngine.Vector2 @static
---@field public one UnityEngine.Vector2 @static
---@field public up UnityEngine.Vector2 @static
---@field public down UnityEngine.Vector2 @static
---@field public left UnityEngine.Vector2 @static
---@field public right UnityEngine.Vector2 @static
---@field public positiveInfinity UnityEngine.Vector2 @static
---@field public negativeInfinity UnityEngine.Vector2 @static
---@field public x number
---@field public y number
---@field public Item number
---@field public normalized UnityEngine.Vector2
---@field public magnitude number
---@field public sqrMagnitude number
local m = {}

---@param newX number
---@param newY number
function m:Set(newX, newY) end

---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function m.LerpUnclamped(a, b, t) end

---@static
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param maxDistanceDelta number
---@return UnityEngine.Vector2
function m.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(scale:UnityEngine.Vector2)
---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.Scale(a, b) end

function m:Normalize() end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Vector2): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param inDirection UnityEngine.Vector2
---@param inNormal UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.Reflect(inDirection, inNormal) end

---@static
---@param inDirection UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.Perpendicular(inDirection) end

---@static
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return number
function m.Dot(lhs, rhs) end

---@static
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return number
function m.Angle(from, to) end

---@static
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return number
function m.SignedAngle(from, to) end

---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return number
function m.Distance(a, b) end

---@static
---@param vector UnityEngine.Vector2
---@param maxLength number
---@return UnityEngine.Vector2
function m.ClampMagnitude(vector, maxLength) end

---@overload fun():
---@static
---@param a UnityEngine.Vector2
---@return number
function m.SqrMagnitude(a) end

---@static
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.Min(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.Max(lhs, rhs) end

---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:number):(, UnityEngine.Vector2) @static
---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:number, maxSpeed:number, deltaTime:number):(, UnityEngine.Vector2) @static
---@static
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime number
---@param maxSpeed number
---@return UnityEngine.Vector2, UnityEngine.Vector2
function m.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Vector2, d:number): @static
---@overload fun(d:number, a:UnityEngine.Vector2): @static
---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.op_Multiply(a, b) end

---@overload fun(a:UnityEngine.Vector2, d:number): @static
---@static
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.op_Division(a, b) end

---@static
---@param a UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.op_UnaryNegation(a) end

---@static
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(v:UnityEngine.Vector2): @static
---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector2
function m.op_Implicit(v) end

UnityEngine.Vector2 = m
return m
