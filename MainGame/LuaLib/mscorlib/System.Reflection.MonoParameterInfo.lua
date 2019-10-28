---@class System.Reflection.MonoParameterInfo : System.Reflection.RuntimeParameterInfo
---@field public DefaultValue any
---@field public RawDefaultValue any
---@field public MetadataToken number
---@field public HasDefaultValue boolean
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
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

---@virtual
---@return System.Type[]
function m:GetOptionalCustomModifiers() end

---@virtual
---@return System.Type[]
function m:GetRequiredCustomModifiers() end

System.Reflection.MonoParameterInfo = m
return m
