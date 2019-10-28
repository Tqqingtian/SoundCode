---@class System.Runtime.InteropServices._EventInfo : table
---@field public Attributes System.Reflection.EventAttributes
---@field public DeclaringType System.Type
---@field public EventHandlerType System.Type
---@field public IsMulticast boolean
---@field public IsSpecialName boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public Name string
---@field public ReflectedType System.Type
local m = {}

---@abstract
---@param target any
---@param handler fun(...:any|any[]):
function m:AddEventHandler(target, handler) end

---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo
function m:GetAddMethod() end

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@abstract
---@return number
function m:GetHashCode() end

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

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo
function m:GetRaiseMethod() end

---@overload fun(nonPublic:boolean): @abstract
---@abstract
---@return System.Reflection.MethodInfo
function m:GetRemoveMethod() end

---@abstract
---@return System.Type
function m:GetType() end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@abstract
---@param target any
---@param handler fun(...:any|any[]):
function m:RemoveEventHandler(target, handler) end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._EventInfo = m
return m
