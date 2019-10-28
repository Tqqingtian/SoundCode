---@class System.Reflection.Emit.FieldToken : System.ValueType
---@field public Empty System.Reflection.Emit.FieldToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.FieldToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.FieldToken
---@param b System.Reflection.Emit.FieldToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.FieldToken
---@param b System.Reflection.Emit.FieldToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.FieldToken = m
return m
