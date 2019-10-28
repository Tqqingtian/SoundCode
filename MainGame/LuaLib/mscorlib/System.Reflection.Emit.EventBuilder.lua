---@class System.Reflection.Emit.EventBuilder : System.Object
local m = {}

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:AddOtherMethod(mdBuilder) end

---@return System.Reflection.Emit.EventToken
function m:GetEventToken() end

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:SetAddOnMethod(mdBuilder) end

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:SetRaiseMethod(mdBuilder) end

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function m:SetRemoveOnMethod(mdBuilder) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

System.Reflection.Emit.EventBuilder = m
return m
