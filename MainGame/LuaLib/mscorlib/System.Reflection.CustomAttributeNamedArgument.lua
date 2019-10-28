---@class System.Reflection.CustomAttributeNamedArgument : System.ValueType
---@field public MemberInfo System.Reflection.MemberInfo
---@field public TypedValue System.Reflection.CustomAttributeTypedArgument
---@field public IsField boolean
---@field public MemberName string
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
---@param left System.Reflection.CustomAttributeNamedArgument
---@param right System.Reflection.CustomAttributeNamedArgument
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.CustomAttributeNamedArgument
---@param right System.Reflection.CustomAttributeNamedArgument
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.CustomAttributeNamedArgument = m
return m
