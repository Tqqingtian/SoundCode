---@class System.Reflection.Emit.StringToken : System.ValueType
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.StringToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.StringToken
---@param b System.Reflection.Emit.StringToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.StringToken
---@param b System.Reflection.Emit.StringToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.StringToken = m
return m
