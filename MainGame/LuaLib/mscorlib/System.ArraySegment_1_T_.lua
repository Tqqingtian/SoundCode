---@class System.ArraySegment_1_T_ : System.ValueType
---@field public Array any[]
---@field public Offset number
---@field public Count number
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:any[]):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a any[]
---@param b any[]
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a any[]
---@param b any[]
---@return boolean
function m.op_Inequality(a, b) end

System.ArraySegment_1_T_ = m
return m
