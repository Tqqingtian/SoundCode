---@class UnityEngine.Quaternion : System.ValueType
---@field public kEpsilon number @static
---@field public identity UnityEngine.Quaternion @static
---@field public x number
---@field public y number
---@field public z number
---@field public w number
---@field public Item number
---@field public eulerAngles UnityEngine.Vector3
---@field public normalized UnityEngine.Quaternion
local m = {}

---@static
---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return UnityEngine.Quaternion
function m.FromToRotation(fromDirection, toDirection) end

---@static
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function m.Inverse(rotation) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function m.Slerp(a, b, t) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function m.SlerpUnclamped(a, b, t) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function m.LerpUnclamped(a, b, t) end

---@static
---@param angle number
---@param axis UnityEngine.Vector3
---@return UnityEngine.Quaternion
function m.AngleAxis(angle, axis) end

---@overload fun(forward:UnityEngine.Vector3): @static
---@static
---@param forward UnityEngine.Vector3
---@param upwards UnityEngine.Vector3
---@return UnityEngine.Quaternion
function m.LookRotation(forward, upwards) end

---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function m:Set(newX, newY, newZ, newW) end

---@overload fun(rotation:UnityEngine.Quaternion, point:UnityEngine.Vector3): @static
---@static
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function m.op_Multiply(lhs, rhs) end

---@static
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function m.Dot(a, b) end

---@overload fun(view:UnityEngine.Vector3, up:UnityEngine.Vector3)
---@param view UnityEngine.Vector3
function m:SetLookRotation(view) end

---@static
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function m.Angle(a, b) end

---@overload fun(euler:UnityEngine.Vector3): @static
---@static
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function m.Euler(x, y, z) end

---@return System.Single, UnityEngine.Vector3
function m:ToAngleAxis() end

---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
function m:SetFromToRotation(fromDirection, toDirection) end

---@static
---@param from UnityEngine.Quaternion
---@param to UnityEngine.Quaternion
---@param maxDegreesDelta number
---@return UnityEngine.Quaternion
function m.RotateTowards(from, to, maxDegreesDelta) end

---@overload fun()
---@static
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function m.Normalize(q) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Quaternion): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@overload fun(euler:UnityEngine.Vector3): @static
---@static
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function m.EulerRotation(x, y, z) end

---@overload fun(euler:UnityEngine.Vector3)
---@param x number
---@param y number
---@param z number
function m:SetEulerRotation(x, y, z) end

---@return UnityEngine.Vector3
function m:ToEuler() end

---@overload fun(euler:UnityEngine.Vector3): @static
---@static
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function m.EulerAngles(x, y, z) end

---@return UnityEngine.Vector3, System.Single
function m:ToAxisAngle() end

---@overload fun(euler:UnityEngine.Vector3)
---@param x number
---@param y number
---@param z number
function m:SetEulerAngles(x, y, z) end

---@overload fun():
---@static
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function m.ToEulerAngles(rotation) end

---@param axis UnityEngine.Vector3
---@param angle number
function m:SetAxisAngle(axis, angle) end

---@static
---@param axis UnityEngine.Vector3
---@param angle number
---@return UnityEngine.Quaternion
function m.AxisAngle(axis, angle) end

UnityEngine.Quaternion = m
return m
