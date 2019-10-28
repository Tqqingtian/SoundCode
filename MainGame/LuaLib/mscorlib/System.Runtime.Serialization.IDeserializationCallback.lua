---@class System.Runtime.Serialization.IDeserializationCallback : table
local m = {}

---@abstract
---@param sender any
function m:OnDeserialization(sender) end

System.Runtime.Serialization.IDeserializationCallback = m
return m
