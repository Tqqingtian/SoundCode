---@class System.Runtime.InteropServices._FieldInfo : table
---@field public Attributes System.Reflection.FieldAttributes
---@field public DeclaringType System.Type
---@field public FieldHandle System.RuntimeFieldHandle
---@field public FieldType System.Type
---@field public IsAssembly boolean
---@field public IsFamily boolean
---@field public IsFamilyAndAssembly boolean
---@field public IsFamilyOrAssembly boolean
---@field public IsInitOnly boolean
---@field public IsLiteral boolean
---@field public IsNotSerialized boolean
---@field public IsPinvokeImpl boolean
---@field public IsPrivate boolean
---@field public IsPublic boolean
---@field public IsSpecialName boolean
---@field public IsStatic boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public Name string
---@field public ReflectedType System.Type
local m = {}

---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@return System.Type
function m:GetType() end

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
---@param obj any
---@return any
function m:GetValue(obj) end

---@abstract
---@param obj System.TypedReference
---@return any
function m:GetValueDirect(obj) end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(obj:any, value:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, culture:System.Globalization.CultureInfo) @abstract
---@abstract
---@param obj any
---@param value any
function m:SetValue(obj, value) end

---@abstract
---@param obj System.TypedReference
---@param value any
function m:SetValueDirect(obj, value) end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._FieldInfo = m
return m
