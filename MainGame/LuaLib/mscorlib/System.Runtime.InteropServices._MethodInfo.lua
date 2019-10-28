---@class System.Runtime.InteropServices._MethodInfo : table
---@field public Attributes System.Reflection.MethodAttributes
---@field public CallingConvention System.Reflection.CallingConventions
---@field public DeclaringType System.Type
---@field public IsAbstract boolean
---@field public IsAssembly boolean
---@field public IsConstructor boolean
---@field public IsFamily boolean
---@field public IsFamilyAndAssembly boolean
---@field public IsFamilyOrAssembly boolean
---@field public IsFinal boolean
---@field public IsHideBySig boolean
---@field public IsPrivate boolean
---@field public IsPublic boolean
---@field public IsSpecialName boolean
---@field public IsStatic boolean
---@field public IsVirtual boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public MethodHandle System.RuntimeMethodHandle
---@field public Name string
---@field public ReflectedType System.Type
---@field public ReturnType System.Type
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
local m = {}

---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@abstract
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@return System.Reflection.MethodImplAttributes
function m:GetMethodImplementationFlags() end

---@abstract
---@return System.Reflection.ParameterInfo[]
function m:GetParameters() end

---@abstract
---@param riid System.Guid
---@param rgszNames System.IntPtr
---@param cNames number
---@param lcid number
---@param rgDispId System.IntPtr
---@return System.Guid
function m:GetIDsOfNames(riid, rgszNames, cNames, lcid, rgDispId) end

---@abstract
---@param iTInfo number
---@param lcid number
---@param ppTInfo System.IntPtr
function m:GetTypeInfo(iTInfo, lcid, ppTInfo) end

---@abstract
---@return System.UInt32
function m:GetTypeInfoCount() end

---@overload fun(obj:any, parameters:any[]): @abstract
---@overload fun(obj:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, parameters:any[], culture:System.Globalization.CultureInfo): @abstract
---@abstract
---@param dispIdMember number
---@param riid System.Guid
---@param lcid number
---@param wFlags number
---@param pDispParams System.IntPtr
---@param pVarResult System.IntPtr
---@param pExcepInfo System.IntPtr
---@param puArgErr System.IntPtr
---@return System.Guid
function m:Invoke(dispIdMember, riid, lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr) end

---@abstract
---@return System.Type
function m:GetType() end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._MethodInfo = m
return m
