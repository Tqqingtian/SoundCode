---@class System.ValueTuple_2_T1_T2_ : System.ValueType
---@field public Item1 any
---@field public Item2 any
local m = {}

---@overload fun(other:System.ValueTuple_2_T1_T2_): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@param other System.ValueTuple_2_T1_T2_
---@return number
function m:CompareTo(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.ValueTuple_2_T1_T2_ = m
return m
