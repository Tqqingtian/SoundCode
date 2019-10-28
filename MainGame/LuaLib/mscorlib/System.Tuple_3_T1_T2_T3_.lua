---@class System.Tuple_3_T1_T2_T3_ : System.Object
---@field public Item1 any
---@field public Item2 any
---@field public Item3 any
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.Tuple_3_T1_T2_T3_ = m
return m
