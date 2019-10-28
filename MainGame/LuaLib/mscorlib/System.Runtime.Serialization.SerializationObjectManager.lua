---@class System.Runtime.Serialization.SerializationObjectManager : System.Object
local m = {}

---@param obj any
function m:RegisterObject(obj) end

function m:RaiseOnSerializedEvent() end

System.Runtime.Serialization.SerializationObjectManager = m
return m
