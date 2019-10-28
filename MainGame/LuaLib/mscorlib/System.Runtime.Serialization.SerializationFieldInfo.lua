---@class System.Runtime.Serialization.SerializationFieldInfo : System.Reflection.FieldInfo
---@field public Module System.Reflection.Module
---@field public MetadataToken number
---@field public Name string
---@field public DeclaringType System.Type
---@field public ReflectedType System.Type
---@field public FieldType System.Type
---@field public FieldHandle System.RuntimeFieldHandle
---@field public Attributes System.Reflection.FieldAttributes
local m = {}

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

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

System.Runtime.Serialization.SerializationFieldInfo = m
return m
