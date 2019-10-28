---@class System.Reflection.FieldInfo : System.Reflection.MemberInfo
---@field public Attributes System.Reflection.FieldAttributes
---@field public FieldHandle System.RuntimeFieldHandle
---@field public FieldType System.Type
---@field public MemberType System.Reflection.MemberTypes
---@field public IsLiteral boolean
---@field public IsStatic boolean
---@field public IsInitOnly boolean
---@field public IsPublic boolean
---@field public IsPrivate boolean
---@field public IsFamily boolean
---@field public IsAssembly boolean
---@field public IsFamilyAndAssembly boolean
---@field public IsFamilyOrAssembly boolean
---@field public IsPinvokeImpl boolean
---@field public IsSpecialName boolean
---@field public IsNotSerialized boolean
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
---@field public IsSecurityTransparent boolean
local m = {}

---@abstract
---@param obj any
---@return any
function m:GetValue(obj) end

---@overload fun(obj:any, value:any) @virtual
---@abstract
---@param obj any
---@param value any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function m:SetValue(obj, value, invokeAttr, binder, culture) end

---@overload fun(handle:System.RuntimeFieldHandle, declaringType:System.RuntimeTypeHandle): @static
---@static
---@param handle System.RuntimeFieldHandle
---@return System.Reflection.FieldInfo
function m.GetFieldFromHandle(handle) end

---@virtual
---@param obj System.TypedReference
---@return any
function m:GetValueDirect(obj) end

---@virtual
---@param obj System.TypedReference
---@param value any
function m:SetValueDirect(obj, value) end

---@virtual
---@return System.Type[]
function m:GetOptionalCustomModifiers() end

---@virtual
---@return System.Type[]
function m:GetRequiredCustomModifiers() end

---@virtual
---@return any
function m:GetRawConstantValue() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.FieldInfo
---@param right System.Reflection.FieldInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.FieldInfo
---@param right System.Reflection.FieldInfo
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.FieldInfo = m
return m
