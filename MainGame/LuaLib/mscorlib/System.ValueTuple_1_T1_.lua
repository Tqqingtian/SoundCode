---@class System.ValueTuple_1_T1_ : System.ValueType
---@field public Item1 any
local m = {}

---@overload fun(other:System.ValueTuple_1_T1_): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@param other System.ValueTuple_1_T1_
---@return number
function m:CompareTo(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.ValueTuple_1_T1_ = m
return m
