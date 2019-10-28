---@class UnityEngine.Bounds : System.ValueType
---@field public center UnityEngine.Vector3
---@field public size UnityEngine.Vector3
---@field public extents UnityEngine.Vector3
---@field public min UnityEngine.Vector3
---@field public max UnityEngine.Vector3
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Bounds): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
function m:SetMinMax(min, max) end

---@overload fun(bounds:UnityEngine.Bounds)
---@param point UnityEngine.Vector3
function m:Encapsulate(point) end

---@overload fun(amount:UnityEngine.Vector3)
---@param amount number
function m:Expand(amount) end

---@param bounds UnityEngine.Bounds
---@return boolean
function m:Intersects(bounds) end

---@overload fun(ray:UnityEngine.Ray):(, System.Single)
---@param ray UnityEngine.Ray
---@return boolean
function m:IntersectRay(ray) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@param point UnityEngine.Vector3
---@return boolean
function m:Contains(point) end

---@param point UnityEngine.Vector3
---@return number
function m:SqrDistance(point) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:ClosestPoint(point) end

UnityEngine.Bounds = m
return m
