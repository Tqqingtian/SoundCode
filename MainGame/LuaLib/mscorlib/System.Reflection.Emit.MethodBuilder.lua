---@class System.Reflection.Emit.MethodBuilder : System.Reflection.MethodInfo
---@field public ContainsGenericParameters boolean
---@field public InitLocals boolean
---@field public MethodHandle System.RuntimeMethodHandle
---@field public ReturnType System.Type
---@field public ReflectedType System.Type
---@field public DeclaringType System.Type
---@field public Name string
---@field public Attributes System.Reflection.MethodAttributes
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
---@field public CallingConvention System.Reflection.CallingConventions
---@field public Signature string
---@field public IsGenericMethodDefinition boolean
---@field public IsGenericMethod boolean
---@field public Module System.Reflection.Module
---@field public ReturnParameter System.Reflection.ParameterInfo
local m = {}

---@return System.Reflection.Emit.MethodToken
function m:GetToken() end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

---@virtual
---@return System.Reflection.MethodImplAttributes
function m:GetMethodImplementationFlags() end

---@virtual
---@return System.Reflection.ParameterInfo[]
function m:GetParameters() end

---@return System.Reflection.Module
function m:GetModule() end

---@param il string
---@param count number
function m:CreateMethodBody(il, count) end

---@param il string
---@param maxStack number
---@param localSignature string
---@param exceptionHandlers System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_ExceptionHandler_
---@param tokenFixups System.Collections.Generic.IEnumerable_1_System_Int32_
function m:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups) end

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

---@overload fun(size:number):
---@return System.Reflection.Emit.ILGenerator
function m:GetILGenerator() end

---@param position number
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName string
---@return System.Reflection.Emit.ParameterBuilder
function m:DefineParameter(position, attributes, strParamName) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@param attributes System.Reflection.MethodImplAttributes
function m:SetImplementationFlags(attributes) end

---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function m:AddDeclarativeSecurity(action, pset) end

---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
function m:SetMarshal(unmanagedMarshal) end

---@param name string
---@param data string
function m:SetSymCustomAttribute(name, data) end

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

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Reflection.MethodInfo
function m:MakeGenericMethod(...) end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetGenericMethodDefinition() end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@overload fun():
---@param ... string|string[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function m:DefineGenericParameters(...) end

---@param returnType System.Type
function m:SetReturnType(returnType) end

---@overload fun()
---@param ... System.Type|System.Type[]
function m:SetParameters(...) end

---@param returnType System.Type
---@param returnTypeRequiredCustomModifiers System.Type[]
---@param returnTypeOptionalCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param parameterTypeRequiredCustomModifiers System.Type[][]
---@param parameterTypeOptionalCustomModifiers System.Type[][]
function m:SetSignature(returnType, returnTypeRequiredCustomModifiers, returnTypeOptionalCustomModifiers, parameterTypes, parameterTypeRequiredCustomModifiers, parameterTypeOptionalCustomModifiers) end

System.Reflection.Emit.MethodBuilder = m
return m
