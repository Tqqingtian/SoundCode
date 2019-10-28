---@class System.Reflection.CustomAttributeTypedArgument : System.ValueType
---@field public ArgumentType System.Type
---@field public Value any
local m = {}

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.CustomAttributeTypedArgument
---@param right System.Reflection.CustomAttributeTypedArgument
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.CustomAttributeTypedArgument
---@param right System.Reflection.CustomAttributeTypedArgument
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.CustomAttributeTypedArgument = m
return m
