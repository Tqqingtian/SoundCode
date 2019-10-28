---@class System.Reflection.Emit.MethodToken : System.ValueType
---@field public Empty System.Reflection.Emit.MethodToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.MethodToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.MethodToken
---@param b System.Reflection.Emit.MethodToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.MethodToken
---@param b System.Reflection.Emit.MethodToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.MethodToken = m
return m
