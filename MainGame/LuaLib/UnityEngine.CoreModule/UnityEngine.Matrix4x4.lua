---@class UnityEngine.Matrix4x4 : System.ValueType
---@field public zero UnityEngine.Matrix4x4 @static
---@field public identity UnityEngine.Matrix4x4 @static
---@field public m00 number
---@field public m10 number
---@field public m20 number
---@field public m30 number
---@field public m01 number
---@field public m11 number
---@field public m21 number
---@field public m31 number
---@field public m02 number
---@field public m12 number
---@field public m22 number
---@field public m32 number
---@field public m03 number
---@field public m13 number
---@field public m23 number
---@field public m33 number
---@field public rotation UnityEngine.Quaternion
---@field public lossyScale UnityEngine.Vector3
---@field public isIdentity boolean
---@field public determinant number
---@field public decomposeProjection UnityEngine.FrustumPlanes
---@field public inverse UnityEngine.Matrix4x4
---@field public transpose UnityEngine.Matrix4x4
---@field public Item number
---@field public Item number
local m = {}

---@return boolean
function m:ValidTRS() end

---@static
---@param m UnityEngine.Matrix4x4
---@return number
function m.Determinant(m) end

---@static
---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function m.TRS(pos, q, s) end

---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
function m:SetTRS(pos, q, s) end

---@static
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function m.Inverse(m) end

---@static
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function m.Transpose(m) end

---@static
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
---@return UnityEngine.Matrix4x4
function m.Ortho(left, right, bottom, top, zNear, zFar) end

---@static
---@param fov number
---@param aspect number
---@param zNear number
---@param zFar number
---@return UnityEngine.Matrix4x4
function m.Perspective(fov, aspect, zNear, zFar) end

---@static
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param up UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function m.LookAt(from, to, up) end

---@overload fun(fp:UnityEngine.FrustumPlanes): @static
---@static
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
---@return UnityEngine.Matrix4x4
function m.Frustum(left, right, bottom, top, zNear, zFar) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Matrix4x4): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(lhs:UnityEngine.Matrix4x4, vector:UnityEngine.Vector4): @static
---@static
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function m.op_Multiply(lhs, rhs) end

---@static
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@param index number
---@return UnityEngine.Vector4
function m:GetColumn(index) end

---@param index number
---@return UnityEngine.Vector4
function m:GetRow(index) end

---@param index number
---@param column UnityEngine.Vector4
function m:SetColumn(index, column) end

---@param index number
---@param row UnityEngine.Vector4
function m:SetRow(index, row) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:MultiplyPoint(point) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:MultiplyPoint3x4(point) end

---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:MultiplyVector(vector) end

---@param plane UnityEngine.Plane
---@return UnityEngine.Plane
function m:TransformPlane(plane) end

---@static
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function m.Scale(vector) end

---@static
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function m.Translate(vector) end

---@static
---@param q UnityEngine.Quaternion
---@return UnityEngine.Matrix4x4
function m.Rotate(q) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Matrix4x4 = m
return m
