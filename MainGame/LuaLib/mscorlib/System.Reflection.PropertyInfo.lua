---@class System.Reflection.PropertyInfo : System.Reflection.MemberInfo
---@field public Attributes System.Reflection.PropertyAttributes
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public GetMethod System.Reflection.MethodInfo
---@field public SetMethod System.Reflection.MethodInfo
---@field public IsSpecialName boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public PropertyType System.Type
local m = {}

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo[]
function m:GetAccessors() end

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo
function m:GetGetMethod() end

---@abstract
---@return System.Reflection.ParameterInfo[]
function m:GetIndexParameters() end

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo
function m:GetSetMethod() end

---@overload fun(obj:any):
---@overload fun(obj:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo): @abstract
---@virtual
---@param obj any
---@param index any[]
---@return any
function m:GetValue(obj, index) end

---@overload fun(obj:any, value:any)
---@overload fun(obj:any, value:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo) @abstract
---@virtual
---@param obj any
---@param value any
---@param index any[]
function m:SetValue(obj, value, index) end

---@virtual
---@return System.Type[]
function m:GetOptionalCustomModifiers() end

---@virtual
---@return System.Type[]
function m:GetRequiredCustomModifiers() end

---@virtual
---@return any
function m:GetConstantValue() end

---@virtual
---@return any
function m:GetRawConstantValue() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.PropertyInfo
---@param right System.Reflection.PropertyInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.PropertyInfo
---@param right System.Reflection.PropertyInfo
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.PropertyInfo = m
return m
