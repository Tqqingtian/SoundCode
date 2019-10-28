---@class System.Reflection.MemberInfo : System.Object
---@field public MemberType System.Reflection.MemberTypes
---@field public Name string
---@field public DeclaringType System.Type
---@field public ReflectedType System.Type
---@field public CustomAttributes System.Collections.Generic.IEnumerable_1_System_Reflection_CustomAttributeData_
---@field public MetadataToken number
---@field public Module System.Reflection.Module
local m = {}

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@overload fun(): @extension
---@overload fun(inherit:boolean): @extension
---@overload fun(attributeType:System.Type): @extension
---@overload fun(): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@overload fun(inherit:boolean): @extension
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@overload fun(attributeType:System.Type): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

---@static
---@param left System.Reflection.MemberInfo
---@param right System.Reflection.MemberInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.MemberInfo
---@param right System.Reflection.MemberInfo
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@overload fun(inherit:boolean): @extension
---@extension
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(attributeType) end

System.Reflection.MemberInfo = m
return m
