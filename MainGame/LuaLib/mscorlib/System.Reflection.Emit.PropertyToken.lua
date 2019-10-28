---@class System.Reflection.Emit.PropertyToken : System.ValueType
---@field public Empty System.Reflection.Emit.PropertyToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.PropertyToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.PropertyToken
---@param b System.Reflection.Emit.PropertyToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.PropertyToken
---@param b System.Reflection.Emit.PropertyToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.PropertyToken = m
return m
