---@class System.Reflection.IReflectableType : table
local m = {}

---@abstract
---@return System.Reflection.TypeInfo
function m:GetTypeInfo() end

System.Reflection.IReflectableType = m
return m
