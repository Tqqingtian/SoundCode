---@class System.Reflection.MonoArrayMethod : System.Reflection.MethodInfo
---@field public ReturnType System.Type
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public ReflectedType System.Type
---@field public DeclaringType System.Type
---@field public Name string
local m = {}

---@virtual
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

---@virtual
---@return System.Reflection.MethodImplAttributes
function m:GetMethodImplementationFlags() end

---@virtual
---@return System.Reflection.ParameterInfo[]
function m:GetParameters() end

---@virtual
---@param obj any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters any[]
---@param culture System.Globalization.CultureInfo
---@return any
function m:Invoke(obj, invokeAttr, binder, parameters, culture) end

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
---@return string
function m:ToString() end

System.Reflection.MonoArrayMethod = m
return m
