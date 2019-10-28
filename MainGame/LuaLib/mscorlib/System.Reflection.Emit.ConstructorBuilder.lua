---@class System.Reflection.Emit.ConstructorBuilder : System.Reflection.ConstructorInfo
---@field public CallingConvention System.Reflection.CallingConventions
---@field public InitLocals boolean
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public ReflectedType System.Type
---@field public DeclaringType System.Type
---@field public ReturnType System.Type
---@field public Name string
---@field public Signature string
---@field public Module System.Reflection.Module
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

---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function m:AddDeclarativeSecurity(action, pset) end

---@param iSequence number
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName string
---@return System.Reflection.Emit.ParameterBuilder
function m:DefineParameter(iSequence, attributes, strParamName) end

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

---@overload fun(streamSize:number):
---@return System.Reflection.Emit.ILGenerator
function m:GetILGenerator() end

---@param il string
---@param maxStack number
---@param localSignature string
---@param exceptionHandlers System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_ExceptionHandler_
---@param tokenFixups System.Collections.Generic.IEnumerable_1_System_Int32_
function m:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@param attributes System.Reflection.MethodImplAttributes
function m:SetImplementationFlags(attributes) end

---@return System.Reflection.Module
function m:GetModule() end

---@return System.Reflection.Emit.MethodToken
function m:GetToken() end

---@param name string
---@param data string
function m:SetSymCustomAttribute(name, data) end

---@virtual
---@return string
function m:ToString() end

System.Reflection.Emit.ConstructorBuilder = m
return m
