---@class UnityEngine.Vector3 : System.ValueType
---@field public kEpsilon number @static
---@field public kEpsilonNormalSqrt number @static
---@field public zero UnityEngine.Vector3 @static
---@field public one UnityEngine.Vector3 @static
---@field public forward UnityEngine.Vector3 @static
---@field public back UnityEngine.Vector3 @static
---@field public up UnityEngine.Vector3 @static
---@field public down UnityEngine.Vector3 @static
---@field public left UnityEngine.Vector3 @static
---@field public right UnityEngine.Vector3 @static
---@field public positiveInfinity UnityEngine.Vector3 @static
---@field public negativeInfinity UnityEngine.Vector3 @static
---@field public fwd UnityEngine.Vector3 @static
---@field public x number
---@field public y number
---@field public z number
---@field public Item number
---@field public normalized UnityEngine.Vector3
---@field public magnitude number
---@field public sqrMagnitude number
local m = {}

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function m.Slerp(a, b, t) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function m.SlerpUnclamped(a, b, t) end

---@overload fun(normal:UnityEngine.Vector3, tangent:UnityEngine.Vector3, binormal:UnityEngine.Vector3):(, UnityEngine.Vector3, UnityEngine.Vector3) @static
---@static
---@param normal UnityEngine.Vector3
---@param tangent UnityEngine.Vector3
---@return UnityEngine.Vector3, UnityEngine.Vector3
function m.OrthoNormalize(normal, tangent) end

---@static
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxRadiansDelta number
---@param maxMagnitudeDelta number
---@return UnityEngine.Vector3
function m.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function m.LerpUnclamped(a, b, t) end

---@static
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxDistanceDelta number
---@return UnityEngine.Vector3
function m.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:number):(, UnityEngine.Vector3) @static
---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:number, maxSpeed:number, deltaTime:number):(, UnityEngine.Vector3) @static
---@static
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime number
---@param maxSpeed number
---@return UnityEngine.Vector3, UnityEngine.Vector3
function m.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@param newX number
---@param newY number
---@param newZ number
function m:Set(newX, newY, newZ) end

---@overload fun(scale:UnityEngine.Vector3)
---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Scale(a, b) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Cross(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Vector3): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param inDirection UnityEngine.Vector3
---@param inNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Reflect(inDirection, inNormal) end

---@overload fun()
---@static
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Normalize(value) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return number
function m.Dot(lhs, rhs) end

---@static
---@param vector UnityEngine.Vector3
---@param onNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Project(vector, onNormal) end

---@static
---@param vector UnityEngine.Vector3
---@param planeNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.ProjectOnPlane(vector, planeNormal) end

---@static
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return number
function m.Angle(from, to) end

---@static
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@return number
function m.SignedAngle(from, to, axis) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return number
function m.Distance(a, b) end

---@static
---@param vector UnityEngine.Vector3
---@param maxLength number
---@return UnityEngine.Vector3
function m.ClampMagnitude(vector, maxLength) end

---@static
---@param vector UnityEngine.Vector3
---@return number
function m.Magnitude(vector) end

---@static
---@param vector UnityEngine.Vector3
---@return number
function m.SqrMagnitude(vector) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Min(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Max(lhs, rhs) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.op_Subtraction(a, b) end

---@static
---@param a UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.op_UnaryNegation(a) end

---@overload fun(d:number, a:UnityEngine.Vector3): @static
---@static
---@param a UnityEngine.Vector3
---@param d number
---@return UnityEngine.Vector3
function m.op_Multiply(a, d) end

---@static
---@param a UnityEngine.Vector3
---@param d number
---@return UnityEngine.Vector3
function m.op_Division(a, d) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@static
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return number
function m.AngleBetween(from, to) end

---@static
---@param excludeThis UnityEngine.Vector3
---@param fromThat UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.Exclude(excludeThis, fromThat) end

UnityEngine.Vector3 = m
return m
