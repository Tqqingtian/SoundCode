---@class System.Reflection.MethodBase : System.Reflection.MemberInfo
---@field public MethodImplementationFlags System.Reflection.MethodImplAttributes
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public IsGenericMethodDefinition boolean
---@field public ContainsGenericParameters boolean
---@field public IsGenericMethod boolean
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
---@field public IsSecurityTransparent boolean
---@field public IsPublic boolean
---@field public IsPrivate boolean
---@field public IsFamily boolean
---@field public IsAssembly boolean
---@field public IsFamilyAndAssembly boolean
---@field public IsFamilyOrAssembly boolean
---@field public IsStatic boolean
---@field public IsFinal boolean
---@field public IsVirtual boolean
---@field public IsHideBySig boolean
---@field public IsAbstract boolean
---@field public IsSpecialName boolean
---@field public IsConstructor boolean
local m = {}

---@overload fun(handle:System.RuntimeMethodHandle, declaringType:System.RuntimeTypeHandle): @static
---@static
---@param handle System.RuntimeMethodHandle
---@return System.Reflection.MethodBase
function m.GetMethodFromHandle(handle) end

---@static
---@return System.Reflection.MethodBase
function m.GetCurrentMethod() end

---@static
---@param left System.Reflection.MethodBase
---@param right System.Reflection.MethodBase
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.MethodBase
---@param right System.Reflection.MethodBase
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@abstract
---@return System.Reflection.ParameterInfo[]
function m:GetParameters() end

---@abstract
---@return System.Reflection.MethodImplAttributes
function m:GetMethodImplementationFlags() end

---@overload fun(obj:any, parameters:any[]): @virtual
---@abstract
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

---@virtual
---@return System.Reflection.MethodBody
function m:GetMethodBody() end

System.Reflection.MethodBase = m
return m
