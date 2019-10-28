---@class System.Runtime.InteropServices.ArrayWithOffset : System.ValueType
local m = {}

---@return any
function m:GetArray() end

---@return number
function m:GetOffset() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:System.Runtime.InteropServices.ArrayWithOffset):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Runtime.InteropServices.ArrayWithOffset
---@param b System.Runtime.InteropServices.ArrayWithOffset
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Runtime.InteropServices.ArrayWithOffset
---@param b System.Runtime.InteropServices.ArrayWithOffset
---@return boolean
function m.op_Inequality(a, b) end

System.Runtime.InteropServices.ArrayWithOffset = m
return m
