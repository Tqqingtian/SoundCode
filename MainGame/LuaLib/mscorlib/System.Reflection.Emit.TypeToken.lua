---@class System.Reflection.Emit.TypeToken : System.ValueType
---@field public Empty System.Reflection.Emit.TypeToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.TypeToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.TypeToken
---@param b System.Reflection.Emit.TypeToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.TypeToken
---@param b System.Reflection.Emit.TypeToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.TypeToken = m
return m
