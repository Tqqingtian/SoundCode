---@class System.Tuple_1_T1_ : System.Object
---@field public Item1 any
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

System.Tuple_1_T1_ = m
return m
