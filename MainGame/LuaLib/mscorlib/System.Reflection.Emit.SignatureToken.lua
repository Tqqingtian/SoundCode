---@class System.Reflection.Emit.SignatureToken : System.ValueType
---@field public Empty System.Reflection.Emit.SignatureToken @static
---@field public Token number
local m = {}

---@overload fun(obj:System.Reflection.Emit.SignatureToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Reflection.Emit.SignatureToken
---@param b System.Reflection.Emit.SignatureToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.SignatureToken
---@param b System.Reflection.Emit.SignatureToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.SignatureToken = m
return m
