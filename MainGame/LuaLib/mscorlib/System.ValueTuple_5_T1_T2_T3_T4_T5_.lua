---@class System.ValueTuple_5_T1_T2_T3_T4_T5_ : System.ValueType
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
---@field public Item4 any
---@field public Item5 any
local m = {}

---@overload fun(other:System.ValueTuple_5_T1_T2_T3_T4_T5_): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@param other System.ValueTuple_5_T1_T2_T3_T4_T5_
---@return number
function m:CompareTo(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.ValueTuple_5_T1_T2_T3_T4_T5_ = m
return m
