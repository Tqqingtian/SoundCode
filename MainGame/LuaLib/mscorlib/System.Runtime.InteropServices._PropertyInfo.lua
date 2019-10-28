---@class System.Runtime.InteropServices._PropertyInfo : table
---@field public Attributes System.Reflection.PropertyAttributes
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public DeclaringType System.Type
---@field public IsSpecialName boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public Name string
---@field public PropertyType System.Type
---@field public ReflectedType System.Type
local m = {}

---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo[]
function m:GetAccessors() end

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo
function m:GetGetMethod() end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@return System.Reflection.ParameterInfo[]
function m:GetIndexParameters() end

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo
function m:GetSetMethod() end

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
---@return System.Type
function m:GetType() end

---@overload fun(obj:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo): @abstract
---@abstract
---@param obj any
---@param index any[]
---@return any
function m:GetValue(obj, index) end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(obj:any, value:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo) @abstract
---@abstract
---@param obj any
---@param value any
---@param index any[]
function m:SetValue(obj, value, index) end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._PropertyInfo = m
return m
