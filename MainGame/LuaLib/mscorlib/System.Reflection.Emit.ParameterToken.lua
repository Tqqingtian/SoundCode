---@class System.Reflection.Emit.ParameterToken : System.ValueType
---@field public Empty System.Reflection.Emit.ParameterToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.ParameterToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.ParameterToken
---@param b System.Reflection.Emit.ParameterToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.ParameterToken
---@param b System.Reflection.Emit.ParameterToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.ParameterToken = m
return m
