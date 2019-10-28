---@class System.Runtime.Serialization.ISafeSerializationData : table
local m = {}

---@abstract
---@param deserialized any
function m:CompleteDeserialization(deserialized) end

System.Runtime.Serialization.ISafeSerializationData = m
return m
