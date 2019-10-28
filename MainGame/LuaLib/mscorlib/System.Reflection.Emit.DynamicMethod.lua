---@class System.Reflection.Emit.DynamicMethod : System.Reflection.MethodInfo
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public DeclaringType System.Type
---@field public InitLocals boolean
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Module System.Reflection.Module
---@field public Name string
---@field public ReflectedType System.Type
---@field public ReturnParameter System.Reflection.ParameterInfo
---@field public ReturnType System.Type
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
local m = {}

---@overload fun(delegateType:System.Type, target:any): @virtual
---@virtual
---@param delegateType System.Type
---@return fun(...:any|any[]):
function m:CreateDelegate(delegateType) end

---@param position number
---@param attributes System.Reflection.ParameterAttributes
---@param parameterName string
---@return System.Reflection.Emit.ParameterBuilder
function m:DefineParameter(position, attributes, parameterName) end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@return System.Reflection.Emit.DynamicILInfo
function m:GetDynamicILInfo() end

---@overload fun(streamSize:number):
---@return System.Reflection.Emit.ILGenerator
function m:GetILGenerator() end

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

---@virtual
---@return string
function m:ToString() end

System.Reflection.Emit.DynamicMethod = m
return m
