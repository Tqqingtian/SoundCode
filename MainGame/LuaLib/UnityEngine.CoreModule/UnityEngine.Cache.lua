---@class UnityEngine.Cache : System.ValueType
---@field public valid boolean
---@field public ready boolean
---@field public readOnly boolean
---@field public path string
---@field public index number
---@field public spaceFree number
---@field public maximumAvailableStorageSpace number
---@field public spaceOccupied number
---@field public expirationDelay number
local m = {}

---@static
---@param lhs UnityEngine.Cache
---@param rhs UnityEngine.Cache
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Cache
---@param rhs UnityEngine.Cache
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Cache): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(expiration:number):
---@return boolean
function m:ClearCache() end

UnityEngine.Cache = m
return m
