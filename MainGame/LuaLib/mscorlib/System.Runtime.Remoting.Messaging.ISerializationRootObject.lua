---@class System.Runtime.Remoting.Messaging.ISerializationRootObject : table
local m = {}

---@abstract
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:RootSetObjectData(info, context) end

System.Runtime.Remoting.Messaging.ISerializationRootObject = m
return m
