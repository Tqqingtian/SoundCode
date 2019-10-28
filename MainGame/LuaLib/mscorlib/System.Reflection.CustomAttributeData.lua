---@class System.Reflection.CustomAttributeData : System.Object
---@field public Constructor System.Reflection.ConstructorInfo
---@field public ConstructorArguments System.Reflection.CustomAttributeTypedArgument[]
---@field public NamedArguments System.Reflection.CustomAttributeNamedArgument[]
---@field public AttributeType System.Type
local m = {}

---@overload fun(target:System.Reflection.MemberInfo): @static
---@overload fun(target:System.Reflection.Module): @static
---@overload fun(target:System.Reflection.ParameterInfo): @static
---@static
---@param target System.Reflection.Assembly
---@return System.Reflection.CustomAttributeData[]
function m.GetCustomAttributes(target) end

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

System.Reflection.CustomAttributeData = m
return m
