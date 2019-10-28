---@class System.Reflection.Emit.MethodOnTypeBuilderInst : System.Reflection.MethodInfo
---@field public DeclaringType System.Type
---@field public Name string
---@field public ReflectedType System.Type
---@field public ReturnType System.Type
---@field public Module System.Reflection.Module
---@field public MetadataToken number
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public ContainsGenericParameters boolean
---@field public IsGenericMethodDefinition boolean
---@field public IsGenericMethod boolean
---@field public ReturnParameter System.Reflection.ParameterInfo
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
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
---@return string
function m:ToString() end

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

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Reflection.MethodInfo
function m:MakeGenericMethod(...) end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetGenericMethodDefinition() end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

System.Reflection.Emit.MethodOnTypeBuilderInst = m
return m
