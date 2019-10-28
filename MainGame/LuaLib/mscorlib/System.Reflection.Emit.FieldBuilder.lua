---@class System.Reflection.Emit.FieldBuilder : System.Reflection.FieldInfo
---@field public Attributes System.Reflection.FieldAttributes
---@field public DeclaringType System.Type
---@field public FieldHandle System.RuntimeFieldHandle
---@field public FieldType System.Type
---@field public Name string
---@field public ReflectedType System.Type
---@field public Module System.Reflection.Module
local m = {}

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@return System.Reflection.Emit.FieldToken
function m:GetToken() end

---@virtual
---@param obj any
---@return any
function m:GetValue(obj) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@param defaultValue any
function m:SetConstant(defaultValue) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
function m:SetMarshal(unmanagedMarshal) end

---@param iOffset number
function m:SetOffset(iOffset) end

---@virtual
---@param obj any
---@param val any
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function m:SetValue(obj, val, invokeAttr, binder, culture) end

System.Reflection.Emit.FieldBuilder = m
return m
