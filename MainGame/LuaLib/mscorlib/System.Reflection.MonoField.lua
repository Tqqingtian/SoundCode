---@class System.Reflection.MonoField : System.Reflection.RtFieldInfo
---@field public Attributes System.Reflection.FieldAttributes
---@field public FieldHandle System.RuntimeFieldHandle
---@field public FieldType System.Type
---@field public ReflectedType System.Type
---@field public DeclaringType System.Type
---@field public Name string
---@field public IsSecurityTransparent boolean
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
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
---@param obj any
---@return any
function m:GetValue(obj) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param obj any
---@param val any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function m:SetValue(obj, val, invokeAttr, binder, culture) end

---@virtual
---@return any
function m:GetRawConstantValue() end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

System.Reflection.MonoField = m
return m
