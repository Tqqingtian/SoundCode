---@class System.Runtime.Serialization.IObjectReference : table
local m = {}

---@abstract
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.Runtime.Serialization.IObjectReference = m
return m
