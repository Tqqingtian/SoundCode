---@class UnityEngine.BoneWeight : System.ValueType
---@field public weight0 number
---@field public weight1 number
---@field public weight2 number
---@field public weight3 number
---@field public boneIndex0 number
---@field public boneIndex1 number
---@field public boneIndex2 number
---@field public boneIndex3 number
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.BoneWeight): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param lhs UnityEngine.BoneWeight
---@param rhs UnityEngine.BoneWeight
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.BoneWeight
---@param rhs UnityEngine.BoneWeight
---@return boolean
function m.op_Inequality(lhs, rhs) end

UnityEngine.BoneWeight = m
return m
