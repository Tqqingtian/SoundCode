---@class System.Reflection.Emit.PropertyOnTypeBuilderInst : System.Reflection.PropertyInfo
---@field public Attributes System.Reflection.PropertyAttributes
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public PropertyType System.Type
---@field public DeclaringType System.Type
---@field public ReflectedType System.Type
---@field public Name string
local m = {}

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function m:GetAccessors(nonPublic) end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function m:GetGetMethod(nonPublic) end

---@virtual
---@return System.Reflection.ParameterInfo[]
function m:GetIndexParameters() end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function m:GetSetMethod(nonPublic) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param obj any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index any[]
---@param culture System.Globalization.CultureInfo
---@return any
function m:GetValue(obj, invokeAttr, binder, index, culture) end

---@virtual
---@param obj any
---@param value any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index any[]
---@param culture System.Globalization.CultureInfo
function m:SetValue(obj, value, invokeAttr, binder, index, culture) end

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

System.Reflection.Emit.PropertyOnTypeBuilderInst = m
return m
