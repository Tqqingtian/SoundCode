---@class System.Tuple_2_T1_T2_ : System.Object
---@field public Item1 any
---@field public Item2 any
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

System.Tuple_2_T1_T2_ = m
return m
