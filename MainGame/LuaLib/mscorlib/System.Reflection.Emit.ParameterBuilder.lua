---@class System.Reflection.Emit.ParameterBuilder : System.Object
---@field public Attributes number
---@field public IsIn boolean
---@field public IsOut boolean
---@field public IsOptional boolean
---@field public Name string
---@field public Position number
local m = {}

---@virtual
---@return System.Reflection.Emit.ParameterToken
function m:GetToken() end

---@virtual
---@param defaultValue any
function m:SetConstant(defaultValue) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@virtual
---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
function m:SetMarshal(unmanagedMarshal) end

System.Reflection.Emit.ParameterBuilder = m
return m
