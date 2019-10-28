---@class System.Globalization.SortVersion : System.Object
---@field public FullVersion number
---@field public SortId System.Guid
local m = {}

---@overload fun(other:System.Globalization.SortVersion): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Globalization.SortVersion
---@param right System.Globalization.SortVersion
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Globalization.SortVersion
---@param right System.Globalization.SortVersion
---@return boolean
function m.op_Inequality(left, right) end

System.Globalization.SortVersion = m
return m
