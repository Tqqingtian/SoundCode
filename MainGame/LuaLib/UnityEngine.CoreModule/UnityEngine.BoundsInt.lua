---@class UnityEngine.BoundsInt : System.ValueType
---@field public x number
---@field public y number
---@field public z number
---@field public center UnityEngine.Vector3
---@field public min UnityEngine.Vector3Int
---@field public max UnityEngine.Vector3Int
---@field public xMin number
---@field public yMin number
---@field public zMin number
---@field public xMax number
---@field public yMax number
---@field public zMax number
---@field public position UnityEngine.Vector3Int
---@field public size UnityEngine.Vector3Int
---@field public allPositionsWithin UnityEngine.BoundsInt.PositionEnumerator
local m = {}

---@param minPosition UnityEngine.Vector3Int
---@param maxPosition UnityEngine.Vector3Int
function m:SetMinMax(minPosition, maxPosition) end

---@param bounds UnityEngine.BoundsInt
function m:ClampToBounds(bounds) end

---@param position UnityEngine.Vector3Int
---@return boolean
function m:Contains(position) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param lhs UnityEngine.BoundsInt
---@param rhs UnityEngine.BoundsInt
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.BoundsInt
---@param rhs UnityEngine.BoundsInt
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(other:UnityEngine.BoundsInt): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.BoundsInt = m
return m
