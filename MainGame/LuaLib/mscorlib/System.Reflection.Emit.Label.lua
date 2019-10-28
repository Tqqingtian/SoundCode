---@class System.Reflection.Emit.Label : System.ValueType
local m = {}

---@overload fun(obj:System.Reflection.Emit.Label):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.Label
---@param b System.Reflection.Emit.Label
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.Label
---@param b System.Reflection.Emit.Label
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.Label = m
return m
