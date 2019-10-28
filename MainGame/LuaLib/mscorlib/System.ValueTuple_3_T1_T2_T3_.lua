---@class System.ValueTuple_3_T1_T2_T3_ : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
local m = {}

---@overload fun(other:System.ValueTuple_3_T1_T2_T3_): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@param other System.ValueTuple_3_T1_T2_T3_
---@return number
function m:CompareTo(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.ValueTuple_3_T1_T2_T3_ = m
return m
