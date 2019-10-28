---@class System.Reflection.Emit.PropertyBuilder : System.Reflection.PropertyInfo
---@field public Attributes System.Reflection.PropertyAttributes
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public DeclaringType System.Type
---@field public Name string
---@field public PropertyToken System.Reflection.Emit.PropertyToken
---@field public PropertyType System.Type
---@field public ReflectedType System.Type
---@field public Module System.Reflection.Module
local m = {}

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:AddOtherMethod(mdBuilder) end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function m:GetAccessors(nonPublic) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

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

---@overload fun(obj:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo): @virtual
---@virtual
---@param obj any
---@param index any[]
---@return any
function m:GetValue(obj, index) end

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

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:SetGetMethod(mdBuilder) end

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:SetSetMethod(mdBuilder) end

---@overload fun(obj:any, value:any, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:any[], culture:System.Globalization.CultureInfo) @virtual
---@virtual
---@param obj any
---@param value any
---@param index any[]
function m:SetValue(obj, value, index) end

System.Reflection.Emit.PropertyBuilder = m
return m
