---@class System.Reflection.RtFieldInfo : System.Reflection.RuntimeFieldInfo
local m = {}

---@virtual
---@param obj System.TypedReference
---@param value any
function m:SetValueDirect(obj, value) end

---@virtual
---@param obj System.TypedReference
---@return any
function m:GetValueDirect(obj) end

System.Reflection.RtFieldInfo = m
return m
