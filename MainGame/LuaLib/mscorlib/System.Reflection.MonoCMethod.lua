---@class System.Reflection.MonoCMethod : System.Reflection.RuntimeConstructorInfo
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public ContainsGenericParameters boolean
---@field public ReflectedType System.Type
---@field public DeclaringType System.Type
---@field public Name string
---@field public IsSecurityTransparent boolean
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
local m = {}

---@virtual
---@return System.Reflection.MethodImplAttributes
function m:GetMethodImplementationFlags() end

---@virtual
---@return System.Reflection.ParameterInfo[]
function m:GetParameters() end

---@overload fun(invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, parameters:any[], culture:System.Globalization.CultureInfo): @virtual
---@virtual
---@param obj any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters any[]
---@param culture System.Globalization.CultureInfo
---@return any
function m:Invoke(obj, invokeAttr, binder, parameters, culture) end

---@param obj any
---@param parameters any[]
---@return any
function m:InternalInvoke(obj, parameters) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@return System.Reflection.MethodBody
function m:GetMethodBody() end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

System.Reflection.MonoCMethod = m
return m
