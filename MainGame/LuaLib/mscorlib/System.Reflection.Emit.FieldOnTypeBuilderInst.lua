---@class System.Reflection.Emit.FieldOnTypeBuilderInst : System.Reflection.FieldInfo
---@field public DeclaringType System.Type
---@field public Name string
---@field public ReflectedType System.Type
---@field public Attributes System.Reflection.FieldAttributes
---@field public FieldHandle System.RuntimeFieldHandle
---@field public MetadataToken number
---@field public FieldType System.Type
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
---@return string
function m:ToString() end

---@virtual
---@param obj any
---@return any
function m:GetValue(obj) end

---@virtual
---@param obj any
---@param value any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function m:SetValue(obj, value, invokeAttr, binder, culture) end

System.Reflection.Emit.FieldOnTypeBuilderInst = m
return m
