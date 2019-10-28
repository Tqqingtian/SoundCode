---@class System.Reflection.Emit.ConstructorOnTypeBuilderInst : System.Reflection.ConstructorInfo
---@field public DeclaringType System.Type
---@field public Name string
---@field public ReflectedType System.Type
---@field public Module System.Reflection.Module
---@field public MetadataToken number
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public ContainsGenericParameters boolean
---@field public IsGenericMethodDefinition boolean
---@field public IsGenericMethod boolean
local m = {}

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

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

System.Reflection.Emit.ConstructorOnTypeBuilderInst = m
return m
