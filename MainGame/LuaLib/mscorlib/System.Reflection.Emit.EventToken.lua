---@class System.Reflection.Emit.EventToken : System.ValueType
---@field public Empty System.Reflection.Emit.EventToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.EventToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.EventToken
---@param b System.Reflection.Emit.EventToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.EventToken
---@param b System.Reflection.Emit.EventToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.EventToken = m
return m
