---@class System.Reflection.ParameterInfo : System.Object
---@field public ParameterType System.Type
---@field public Attributes System.Reflection.ParameterAttributes
---@field public IsIn boolean
---@field public IsLcid boolean
---@field public IsOptional boolean
---@field public IsOut boolean
---@field public IsRetval boolean
---@field public Member System.Reflection.MemberInfo
---@field public Name string
---@field public Position number
---@field public CustomAttributes System.Collections.Generic.IEnumerable_1_System_Reflection_CustomAttributeData_
---@field public HasDefaultValue boolean
---@field public DefaultValue any
---@field public RawDefaultValue any
---@field public MetadataToken number
local m = {}

---@virtual
---@return string
function m:ToString() end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@overload fun(): @extension
---@overload fun(inherit:boolean): @extension
---@overload fun(attributeType:System.Type): @extension
---@overload fun(): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@overload fun(inherit:boolean): @extension
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

---@overload fun(attributeType:System.Type): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@virtual
---@return System.Type[]
function m:GetRequiredCustomModifiers() end

---@virtual
---@return System.Type[]
function m:GetOptionalCustomModifiers() end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

---@overload fun(): @extension
---@overload fun(attributeType:System.Type, inherit:boolean): @extension
---@overload fun(inherit:boolean): @extension
---@extension
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(attributeType) end

System.Reflection.ParameterInfo = m
return m
