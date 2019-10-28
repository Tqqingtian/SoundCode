---@class System.Reflection.ConstructorInfo : System.Reflection.MethodBase
---@field public ConstructorName string @static
---@field public TypeConstructorName string @static
---@field public MemberType System.Reflection.MemberTypes
local m = {}

---@overload fun(invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, parameters:any[], culture:System.Globalization.CultureInfo): @abstract
---@param parameters any[]
---@return any
function m:Invoke(parameters) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.ConstructorInfo
---@param right System.Reflection.ConstructorInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.ConstructorInfo
---@param right System.Reflection.ConstructorInfo
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.ConstructorInfo = m
return m
