---@class UnityEngine.Pose : System.ValueType
---@field public identity UnityEngine.Pose @static
---@field public position UnityEngine.Vector3
---@field public rotation UnityEngine.Quaternion
---@field public forward UnityEngine.Vector3
---@field public right UnityEngine.Vector3
---@field public up UnityEngine.Vector3
local m = {}

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@overload fun(lhs:UnityEngine.Transform):
---@param lhs UnityEngine.Pose
---@return UnityEngine.Pose
function m:GetTransformedBy(lhs) end

---@overload fun(other:UnityEngine.Pose): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param a UnityEngine.Pose
---@param b UnityEngine.Pose
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a UnityEngine.Pose
---@param b UnityEngine.Pose
---@return boolean
function m.op_Inequality(a, b) end

UnityEngine.Pose = m
return m
